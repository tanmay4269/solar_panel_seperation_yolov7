- [ ] check where is bounding box data stored

 - [ ] find where video is stored

- looks like xyxy is the bounding box
- looks like pred may hold the bounding box info
  - how do i check if it does hold? 
  - [ ] see output of `apply_classifier`

- looks like b holds the xywh info of all(?) the boxes

- d is x[1]
- what is d holding and how do i access that?

to test that lets just put one image and see all the bbs

the model apparently is preventing prints from util files...
what if i just print(pred)

- got the bounding box data
- understand what the data is, what is xyxy here?

where is txt data being stored?

got info on where xywh is
now i need to decide a good offset for this image
let that be the middle 3rd of width and height 

- whenever the bb's xy is in the middle 3rd, take a ss, stop detection for a while

- [ ] how to take ss of a bounding box
  - get sub image using xywh data 
  - imwrite with name of file as f"extractions/sp{i}.jpg"
- [ ] how to check if its in the center
  - check if xy in center 3rd 
  - capture and save
  - pause detection for a while
    - how?
    - wait until the current solar panel is out of the 3rd 
      - but how do i keep constant track of a solar panel?
    - wait here means not to save image to dir


- get the xywh one very frame
- [ ] check:
  - [ ] save_state: false when captured solar panel is still in the offset
  - [ ] are there any bbs in the offset
- [ ] if both are true: 
  - [ ] save img


1. [x] check if solar panel is in offset 
   - [x] decide a good offset
     - what makes a good offset? 
2. [x] capture image
3. [ ] manage save_state
   - on rising edge of in_offset across images ill need to save image
   - keep in_offset_old and in_offset_new outside the loop iterating over images

the rising edge thing aint working perhaps coz i must have only 6 images finally

- [x] save full img along with just the bounding box

so all the frames are being saved, why?
- [ ] dry run the old and new offset bools

whats happening? 
old and new not doing what they shld be doing
what shld they be doing?
