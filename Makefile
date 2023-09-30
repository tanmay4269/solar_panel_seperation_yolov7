detect:
	python3 detect.py --weights weights/best.pt --conf 0.1 --img-size 640 --source imgs/vid3_f1.jpg

detect_video:
	rm -rf 0_save_solar_panels
	mkdir 0_save_solar_panels

	rm -rf 1_save_full_img
	mkdir 1_save_full_img

	python3 detect.py --weights weights/best.pt --conf 0.25 --img-size 640 --source vids/vid3.2.mp4

base_detect:
	python3 detect.py --weights weights/yolov7.pt --conf 0.25 --img-size 640 --source inference/images/row1.jpg

train:
	@echo -n "Are you sure? [y/N] " && read ans && [ $${ans:-N} = y ]

	python3 train.py --workers 1 --device 0 --batch-size 1 --epochs 75 --img 640 640 --data data/data.yaml --hyp data/hyp.scratch.custom.yaml --cfg cfg/training/yolov7.yaml --name yolo_solar_panel_2 --weights weights/yolov7.pt 