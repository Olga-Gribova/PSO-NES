SigmaL = diag(sig_best);
SigmaL = abs(real(SigmaL));

xmin = min(xbest);
xmax = max(xbest);
sigmax = max(SigmaL);
x = [xmin-sigmax:1:xmax+sigmax];

norm = zeros(length(x), length(sig_best));
for i=1:5
    norm(:,i) = normpdf(x,xbest(i),SigmaL(i));
end

zprog = [10:10:50];
zbig = repmat(zprog, [length(norm),1]);


figure;
p = plot3(zbig, x, norm);
box on;

xlabel('������� ����, �')
ylabel('�������� �������������, ��)')
zlabel('����������� ��������')
title('Resulting impedance distribution')

% load(johnyf-fig2u3d-74fe75d)
% saveas(p, 'Impedance_distr', 'pdf');
% ax = gca;
% fig2u3d(ax, 'tet', 'pdf');