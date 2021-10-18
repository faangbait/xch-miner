 #!/bin/bash
 # Execute with ./fill_single_drive /mnt/sdb
 
FREE=$((`stat -f -c '%f*%S' $1`))
COUNT=$((`echo "$FREE/108900000000" | bc`))
echo "Starting plot $COUNT plots on $1"

/home/chia/plotter -n "$COUNT" -r 28 -t /mnt/process/ -2 /mnt/tmpfs/ -d "$1" -f b0e91b73b64dc9306073aea22e88568123508ccd92d1758a4fa657113be213641595e68a6fa4e9e2f5a6806771ddb91a -c xch1vq9srrxt0sh2u6d8x4h8glxdavufll6kclc4l0kyymvvhjwclx7qn84y4x
