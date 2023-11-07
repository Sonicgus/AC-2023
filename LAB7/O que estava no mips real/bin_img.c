void bin_img(unsigned char *ptr, int w, int h, unsigned char limiar){
  int i,j;
  for (i=0;i<h;i++){
    for (j=0;j<w;j++){
      int num = i*w+j;
      if(ptr[num]<limiar)
        ptr[num]=0;
      else
        ptr[num]=255;
    }
  }
}