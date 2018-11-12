sig0 = [10,10,10,10,10];
rr_true = [739.039914172554 737.875712916819 737.044200493769 737.764587552436 741.316387597891 748.410992256437 758.691166480720 770.579205765688 781.544006124135 788.717304272096 789.664879798602 783.037232813672 768.857472923049 748.371227273442 723.585938160029 696.729779271807 669.821828159871 644.433041046153 621.620369801294 601.972727001823 585.707774397517 572.777744938758 562.962699137932 555.943686243470 551.355886628469 548.824945636549 547.990397377371 548.519691227944 550.115621522722 552.519259207115 555.509908592227 558.903177083653 562.547928385980 566.322660663536 570.131685093603 573.901358581706 577.576534505748 581.117328903342 584.496250946780 587.695711922073 590.705903240229 593.523018827604 596.147788530867 598.584285221302 600.838967681643 602.919922975685 604.836274962145 606.597729271043 608.214228954417 609.695698847131 611.051860239011 612.292100663793 613.425386411348 614.460207765376 615.404548981957 616.265876691538 617.051141770544 617.766790832111 618.418784369890 619.012619291759 619.553354134741 620.045635686433 620.493726075813 620.901529656866 621.272619208291 621.610261124534 621.917439388094 622.196878198732 622.451063198509 622.682261277600 622.892538978815 623.083779541600 623.257698641710 623.415858892467 623.559683179071 623.690466899889 623.809389188959 623.917523192568 624.015845470459 624.105244589053 624.186528970567 624.260434058122 624.327628853026 624.388721876614 624.444266605161 624.494766422827 624.540679134052 624.582421073556 624.620370849019 624.654872748620 624.686239842910 624.714756808053 624.740682495114 624.764252267966 624.785680130475 624.805160661741 624.822870776610 624.838971327104 624.853608559069 624.866915437030];
i = 0;
step0 = 2;
sig_prev = sig0;
[obj, grad] = Obj_F(sig_prev, rr_true, PSO, MTZ_new_1D);
step = step0;
while obj > 1e-10
    sig_new = sig_prev + step*grad;
    obj_prev = obj;
    [obj, grad] = Obj_F(sig_new, rr_true, PSO, MTZ_new_1D);
    if obj<obj_prev
        sig_prev = sig_new;
        i = 1;
        step = step0;
    else
        step = step/2;
    end;
end;
    