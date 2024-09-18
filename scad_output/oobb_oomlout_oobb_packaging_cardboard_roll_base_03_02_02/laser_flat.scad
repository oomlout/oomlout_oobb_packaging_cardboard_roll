$fn = 50;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 0.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -2]) {
							hull() {
								translate(v = [-17.0000000000, 9.5000000000, 0]) {
									cylinder(h = 2, r = 5);
								}
								translate(v = [17.0000000000, 9.5000000000, 0]) {
									cylinder(h = 2, r = 5);
								}
								translate(v = [-17.0000000000, -9.5000000000, 0]) {
									cylinder(h = 2, r = 5);
								}
								translate(v = [17.0000000000, -9.5000000000, 0]) {
									cylinder(h = 2, r = 5);
								}
							}
						}
						translate(v = [-4.0000000000, 14.5000000000, -1.5000000000]) {
							rotate(a = [90, 0, 0]) {
								hull() {
									translate(v = [-0.0000000000, 2.5000000000, 0]) {
										cylinder(h = 29, r = 2.5000000000);
									}
									translate(v = [0.0000000000, 2.5000000000, 0]) {
										cylinder(h = 29, r = 2.5000000000);
									}
									translate(v = [-0.0000000000, -2.5000000000, 0]) {
										cylinder(h = 29, r = 2.5000000000);
									}
									translate(v = [0.0000000000, -2.5000000000, 0]) {
										cylinder(h = 29, r = 2.5000000000);
									}
								}
							}
						}
						translate(v = [4.0000000000, 14.5000000000, -1.5000000000]) {
							rotate(a = [90, 0, 0]) {
								hull() {
									translate(v = [-0.0000000000, 2.5000000000, 0]) {
										cylinder(h = 29, r = 2.5000000000);
									}
									translate(v = [0.0000000000, 2.5000000000, 0]) {
										cylinder(h = 29, r = 2.5000000000);
									}
									translate(v = [-0.0000000000, -2.5000000000, 0]) {
										cylinder(h = 29, r = 2.5000000000);
									}
									translate(v = [0.0000000000, -2.5000000000, 0]) {
										cylinder(h = 29, r = 2.5000000000);
									}
								}
							}
						}
					}
					union() {
						translate(v = [-250.0000000000, -250.0000000000, -502]) {
							cube(size = [500, 500, 500]);
						}
						translate(v = [-250.0000000000, -250.0000000000, -502]) {
							cube(size = [500, 500, 500]);
						}
						translate(v = [-250.0000000000, -250.0000000000, -502]) {
							cube(size = [500, 500, 500]);
						}
						translate(v = [-15.0000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						translate(v = [-15.0000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						translate(v = [15.0000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						translate(v = [15.0000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						translate(v = [15.0000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						translate(v = [15.0000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 3.0000000000);
						}
						translate(v = [-15.0000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [-15.0000000000, 0.0000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [-15.0000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [15.0000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [15.0000000000, 0.0000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [15.0000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [-15.0000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [-15.0000000000, 0.0000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [-15.0000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [15.0000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [15.0000000000, 0.0000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [15.0000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [-15.0000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [-15.0000000000, 0.0000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [-15.0000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [15.0000000000, -7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [15.0000000000, 0.0000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
						translate(v = [15.0000000000, 7.5000000000, -100.0000000000]) {
							cylinder(h = 200, r = 1.5000000000);
						}
					}
				}
			}
		}
	}
}