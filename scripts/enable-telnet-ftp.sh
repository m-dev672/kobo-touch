cat > etc/init.d/rcS < EOF
mkdir -p /dev/pts
mount -t devpts devpts /dev/pts
EOF

cat > etc/init.d/rcS < EOF
21 stream tcp nowait root /bin/busybox ftpd -w -S  /
23 stream tcp nowait root /bin/busybox telnetd -i
EOF

echo '::respawn:/usr/sbin/inetd -f /etc/inetd.conf' > etc/inittab