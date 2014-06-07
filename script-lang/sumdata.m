format long g
f=fopen('data.log','r');

o=0;
c=0;

while 1
    l=fgetl(f);
    if l == -1
        break
    end
    t=regexp(l,'( )+','split')(1,4:5);
    o=o+str2double(t(1,1));
    c=c+str2double(t(1,2));
end

fprintf('Original size %fkb\n',o/1000)
fprintf('Compressed size %fkb\n',c/1000)

