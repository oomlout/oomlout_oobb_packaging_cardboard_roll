import copy
import opsc
import oobb
import oobb_base

def main(**kwargs):
    make_scad(**kwargs)

def make_scad(**kwargs):
    parts = []

    # save_type variables
    if True:
        filter = ""
        #filter = "test"

        kwargs["save_type"] = "none"
        kwargs["save_type"] = "all"
        
        kwargs["overwrite"] = True
        
        #kwargs["modes"] = ["3dpr", "laser", "true"]
        kwargs["modes"] = ["3dpr"]
        #kwargs["modes"] = ["laser"]

    # default variables
    if True:
        kwargs["size"] = "oobb"
        kwargs["width"] = 5
        kwargs["height"] = 1
        kwargs["thickness"] = 3
        
    # project_variables
    if True:
        pass
    
    # declare parts
    if True:

        sizes = []
        #sizes.append([1, 5])
        sizes.append([2, 5])
        #sizes.append([2, 3])
        #sizes.append([3, 3])

        for size in sizes:
            height = size[0]
            width = size[1]
            part_default = {} 
            part_default["project_name"] = "oomlout_oobb_packaging_cardboard_roll" ####### neeeds setting
            part_default["full_shift"] = [0, 0, 0]
            part_default["full_rotations"] = [0, 0, 0]
            
            part = copy.deepcopy(part_default)
            p3 = copy.deepcopy(kwargs)
            p3["width"] = width
            p3["height"] = height            
            part["kwargs"] = p3

            part["name"] = "base"
            parts.append(part)

            part_2 = copy.deepcopy(part)
            part_2["kwargs"]["extra"] = "single_side"
            parts.append(part_2)

            part_3 = copy.deepcopy(part)
            part_2["kwargs"]["extra"] = "cut_in_middle"
            parts.append(part_3)
        
    #make the parts
    if True:
        for part in parts:
            name = part.get("name", "default")
            if filter in name:
                print(f"making {part['name']}")
                make_scad_generic(part)            
                print(f"done {part['name']}")
            else:
                print(f"skipping {part['name']}")

def get_base(thing, **kwargs):

    depth = kwargs.get("thickness", 4)
    width = kwargs.get("width", 5)
    height = kwargs.get("height", 1)
    extra = kwargs.get("extra", "")
    prepare_print = kwargs.get("prepare_print", False)

    pos = kwargs.get("pos", [0, 0, 0])
    #pos = copy.deepcopy(pos)
    #pos[2] += -20

    dep_main = depth
    dep = dep_main

    #add plate
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_plate"    
    p3["depth"] = dep
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    pos1[2] += -dep
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)

    #add holder bumps
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"rounded_rectangle"
    wid = 5
    hei = 10
    dep = (height * 15) - 1
    size = [wid, hei, dep]
    p3["size"] = size
    p3["r"] = 2.5
    pos1 = copy.deepcopy(pos)
    pos1[1] += dep/2
    pos1[2] += -hei/2 + 3.5
    p3["pos"] = pos1    
    rot1 = [90, 0, 0]
    p3["rot"] = rot1
    #p3["m"] = "#"

    ribs = int(((width-2) * 15) / 8) + 1
    if extra == "single_side":
        ribs += 2
    elif extra == "cut_in_middle":
        if ribs % 2 == 0:
            ribs += 1
    spacing_rib = 8
    for i in range(ribs):
        p4 = copy.deepcopy(p3)
        pos1 = copy.deepcopy(p4["pos"])
        start_pos = -((ribs-1)/2 * spacing_rib)
        if extra == "single_side":
            start_pos += 8
        pos1[0] += start_pos + i*spacing_rib
        p4["pos"] = pos1
        oobb_base.append_full(thing,**p4)
    



    #add slice in middle if cut_in_middle
    if extra == "cut_in_middle":
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"cube"
        big = 500
        wid = 1.5
        hei = big
        dep = big
        size = [wid, hei, dep]
        p3["size"] = size
        pos1 = copy.deepcopy(pos)
        pos1[0] += -wid/2
        pos1[1] += -big/2
        pos1[2] += -big/2
        p3["pos"] = pos1
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
    

    #add slice underneath
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_slice"
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)
    pos1[2] += -500 - dep_main
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)
    
    #add holes
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_holes"
    p3["both_holes"] = True  
    p3["radius_name"] = "m3"
    p3["depth"] = depth

    if extra == "single_side":
        p3["holes"] = ["top"]
    else:
        p3["holes"] = ["top","bottom"]
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)


    #add screw_countersunk
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_screw_countersunk"
    p3["radius_name"] = "m3"
    p3["depth"] = depth
    p3["both_holes"] = True
    #p3["m"] = "#"
    #do it for width
    for i in range(height):
        poss = []
        pos1 = copy.deepcopy(pos)
        pos1[1] += (height-1)/2 * 15 - i * 15
        pos1[0] += (width-1)/2 * 15
        if extra != "single_side":
            poss.append(pos1)
        pos2 = copy.deepcopy(pos1)        
        pos2[0] *= -1
        poss.append(pos2)

        p3["pos"] = poss
        oobb_base.append_full(thing,**p3)




    if prepare_print:
        #put into a rotation object
        components_second = copy.deepcopy(thing["components"])
        return_value_2 = {}
        return_value_2["type"]  = "rotation"
        return_value_2["typetype"]  = "p"
        pos1 = copy.deepcopy(pos)
        pos1[0] += 50
        return_value_2["pos"] = pos1
        return_value_2["rot"] = [180,0,0]
        return_value_2["objects"] = components_second
        
        thing["components"].append(return_value_2)

    
        #add slice # top
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_slice"
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)
    
###### utilities



def make_scad_generic(part):
    
    # fetching variables
    name = part.get("name", "default")
    project_name = part.get("project_name", "default")
    
    kwargs = part.get("kwargs", {})    
    
    modes = kwargs.get("modes", ["3dpr", "laser", "true"])
    save_type = kwargs.get("save_type", "all")
    overwrite = kwargs.get("overwrite", True)

    kwargs["type"] = f"{project_name}_{name}"

    thing = oobb_base.get_default_thing(**kwargs)
    kwargs.pop("size","")

    #get the part from the function get_{name}"
    func = globals()[f"get_{name}"]    
    # test if func exists
    if callable(func):            
        func(thing, **kwargs)        
    else:            
        get_base(thing, **kwargs)   
    

    for mode in modes:
        depth = thing.get(
            "depth_mm", thing.get("thickness_mm", 3))
        height = thing.get("height_mm", 100)
        layers = depth / 3
        tilediff = height + 10
        start = 1.5
        if layers != 1:
            start = 1.5 - (layers / 2)*3
        if "bunting" in thing:
            start = 0.5
        opsc.opsc_make_object(f'scad_output/{thing["id"]}/{mode}.scad', thing["components"], mode=mode, save_type=save_type, overwrite=overwrite, layers=layers, tilediff=tilediff, start=start)    


if __name__ == '__main__':
    kwargs = {}
    main(**kwargs)