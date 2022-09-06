function dn = asc2bin(txt)
dec=double(txt);
p2=2.^(0:-1:-7);
B=mod(floor(p2'*dec),2);
dn=reshape(B,1,numel(B));
end
