$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -3]) {
			hull() {
				translate(v = [-17.0000000000, 17.0000000000, 0]) {
					cylinder(h = 3, r = 5);
				}
				translate(v = [17.0000000000, 17.0000000000, 0]) {
					cylinder(h = 3, r = 5);
				}
				translate(v = [-17.0000000000, -17.0000000000, 0]) {
					cylinder(h = 3, r = 5);
				}
				translate(v = [17.0000000000, -17.0000000000, 0]) {
					cylinder(h = 3, r = 5);
				}
			}
		}
		translate(v = [-4.0000000000, 22.0000000000, -1.5000000000]) {
			rotate(a = [90, 0, 0]) {
				hull() {
					translate(v = [-0.0000000000, 2.5000000000, 0]) {
						cylinder(h = 44, r = 2.5000000000);
					}
					translate(v = [0.0000000000, 2.5000000000, 0]) {
						cylinder(h = 44, r = 2.5000000000);
					}
					translate(v = [-0.0000000000, -2.5000000000, 0]) {
						cylinder(h = 44, r = 2.5000000000);
					}
					translate(v = [0.0000000000, -2.5000000000, 0]) {
						cylinder(h = 44, r = 2.5000000000);
					}
				}
			}
		}
		translate(v = [4.0000000000, 22.0000000000, -1.5000000000]) {
			rotate(a = [90, 0, 0]) {
				hull() {
					translate(v = [-0.0000000000, 2.5000000000, 0]) {
						cylinder(h = 44, r = 2.5000000000);
					}
					translate(v = [0.0000000000, 2.5000000000, 0]) {
						cylinder(h = 44, r = 2.5000000000);
					}
					translate(v = [-0.0000000000, -2.5000000000, 0]) {
						cylinder(h = 44, r = 2.5000000000);
					}
					translate(v = [0.0000000000, -2.5000000000, 0]) {
						cylinder(h = 44, r = 2.5000000000);
					}
				}
			}
		}
	}
	union() {
		translate(v = [15.0000000000, 15.0000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.5000000000);
						}
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.8000000000);
						}
						translate(v = [0, 0, -1.7000000000]) {
							cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
						}
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [-15.0000000000, 15.0000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.5000000000);
						}
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.8000000000);
						}
						translate(v = [0, 0, -1.7000000000]) {
							cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
						}
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [15.0000000000, 0.0000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.5000000000);
						}
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.8000000000);
						}
						translate(v = [0, 0, -1.7000000000]) {
							cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
						}
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [-15.0000000000, 0.0000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.5000000000);
						}
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.8000000000);
						}
						translate(v = [0, 0, -1.7000000000]) {
							cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
						}
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [15.0000000000, -15.0000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.5000000000);
						}
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.8000000000);
						}
						translate(v = [0, 0, -1.7000000000]) {
							cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
						}
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [-15.0000000000, -15.0000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.5000000000);
						}
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.8000000000);
						}
						translate(v = [0, 0, -1.7000000000]) {
							cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
						}
						translate(v = [0, 0, -3.0000000000]) {
							cylinder(h = 3, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [-250.0000000000, -250.0000000000, -503]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-250.0000000000, -250.0000000000, -503]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-250.0000000000, -250.0000000000, -503]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-15.0000000000, -15.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [-15.0000000000, 0.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [-15.0000000000, 15.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [15.0000000000, -15.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [15.0000000000, 0.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [15.0000000000, 15.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [15.0000000000, -15.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [15.0000000000, 0.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [15.0000000000, 15.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [-15.0000000000, -15.0000000000, -100.0000000000]) {
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
		translate(v = [-15.0000000000, 15.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [15.0000000000, -15.0000000000, -100.0000000000]) {
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
		translate(v = [15.0000000000, 15.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [-15.0000000000, -15.0000000000, -100.0000000000]) {
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
		translate(v = [-15.0000000000, 15.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [15.0000000000, -15.0000000000, -100.0000000000]) {
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
		translate(v = [15.0000000000, 15.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [-15.0000000000, -15.0000000000, -100.0000000000]) {
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
		translate(v = [-15.0000000000, 15.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
		translate(v = [15.0000000000, -15.0000000000, -100.0000000000]) {
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
		translate(v = [15.0000000000, 15.0000000000, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
	}
}