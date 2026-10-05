import InitE.DeadStages597.Parallel.Data.Chunk015
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation

namespace InitE.DeadStages597.Parallel
theorem node3840_cond_eq
    (child3828 : Flapjack.WordAlloc.removeDeadStructural input3828 value694 value1 value2 = (output3828, value694, value1))
    (child3839 : Flapjack.WordAlloc.removeDeadStructural input3839 value694 value1 value2 = (output3839, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input3840 value694 value1 value2 = (output3840, value698, value1) := by
  rw [input3840_def, output3840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3828]
  try dsimp only
  rw [child3839]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3841_cond_eq
    (child3827 : Flapjack.WordAlloc.removeDeadStructural input3827 value696 value1 value2 = (output3827, value694, value1))
    (child3840 : Flapjack.WordAlloc.removeDeadStructural input3840 value694 value1 value2 = (output3840, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input3841 value696 value1 value2 = (output3841, value698, value1) := by
  rw [input3841_def, output3841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3827]
  try dsimp only
  rw [child3840]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3842_cond_eq
    (child3826 : Flapjack.WordAlloc.removeDeadStructural input3826 value694 value1 value2 = (output3826, value696, value1))
    (child3841 : Flapjack.WordAlloc.removeDeadStructural input3841 value696 value1 value2 = (output3841, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input3842 value694 value1 value2 = (output3842, value698, value1) := by
  rw [input3842_def, output3842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3826]
  try dsimp only
  rw [child3841]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3843_cond_eq
    (child3823 : Flapjack.WordAlloc.removeDeadStructural input3823 value693 value1 value2 = (output3823, value694, value1))
    (child3842 : Flapjack.WordAlloc.removeDeadStructural input3842 value694 value1 value2 = (output3842, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input3843 value693 value1 value2 = (output3843, value698, value1) := by
  rw [input3843_def, output3843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3823]
  try dsimp only
  rw [child3842]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3844 value693 value1 value2 = (output3844, value693, value1) := by
  rw [input3844_def, output3844_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3845 value693 value1 value2 = (output3845, value693, value1) := by
  rw [input3845_def, output3845_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3846 value693 value1 value2 = (output3846, value699, value1) := by
  rw [input3846_def, output3846_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3847 value699 value1 value2 = (output3847, value699, value1) := by
  rw [input3847_def, output3847_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3848_cond_eq
    (child3846 : Flapjack.WordAlloc.removeDeadStructural input3846 value693 value1 value2 = (output3846, value699, value1))
    (child3847 : Flapjack.WordAlloc.removeDeadStructural input3847 value699 value1 value2 = (output3847, value699, value1)) : Flapjack.WordAlloc.removeDeadStructural input3848 value693 value1 value2 = (output3848, value699, value1) := by
  rw [input3848_def, output3848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3846]
  try dsimp only
  rw [child3847]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3849_cond_eq
    (child3845 : Flapjack.WordAlloc.removeDeadStructural input3845 value693 value1 value2 = (output3845, value693, value1))
    (child3848 : Flapjack.WordAlloc.removeDeadStructural input3848 value693 value1 value2 = (output3848, value699, value1)) : Flapjack.WordAlloc.removeDeadStructural input3849 value693 value1 value2 = (output3849, value699, value1) := by
  rw [input3849_def, output3849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3845]
  try dsimp only
  rw [child3848]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3850_cond_eq
    (child3844 : Flapjack.WordAlloc.removeDeadStructural input3844 value693 value1 value2 = (output3844, value693, value1))
    (child3849 : Flapjack.WordAlloc.removeDeadStructural input3849 value693 value1 value2 = (output3849, value699, value1)) : Flapjack.WordAlloc.removeDeadStructural input3850 value693 value1 value2 = (output3850, value699, value1) := by
  rw [input3850_def, output3850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3844]
  try dsimp only
  rw [child3849]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3851_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3851 value699 value1 value2 = (output3851, value700, value1) := by
  rw [input3851_def, output3851_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3852_cond_eq
    (child3850 : Flapjack.WordAlloc.removeDeadStructural input3850 value693 value1 value2 = (output3850, value699, value1))
    (child3851 : Flapjack.WordAlloc.removeDeadStructural input3851 value699 value1 value2 = (output3851, value700, value1)) : Flapjack.WordAlloc.removeDeadStructural input3852 value693 value1 value2 = (output3852, value700, value1) := by
  rw [input3852_def, output3852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3850]
  try dsimp only
  rw [child3851]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3853 value700 value1 value2 = (output3853, value700, value1) := by
  rw [input3853_def, output3853_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3854_cond_eq
    (child3852 : Flapjack.WordAlloc.removeDeadStructural input3852 value693 value1 value2 = (output3852, value700, value1))
    (child3853 : Flapjack.WordAlloc.removeDeadStructural input3853 value700 value1 value2 = (output3853, value700, value1)) : Flapjack.WordAlloc.removeDeadStructural input3854 value693 value1 value2 = (output3854, value700, value1) := by
  rw [input3854_def, output3854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3852]
  try dsimp only
  rw [child3853]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3855_cond_eq
    (child3843 : Flapjack.WordAlloc.removeDeadStructural input3843 value693 value1 value2 = (output3843, value698, value1))
    (child3854 : Flapjack.WordAlloc.removeDeadStructural input3854 value693 value1 value2 = (output3854, value700, value1)) : Flapjack.WordAlloc.removeDeadStructural input3855 value693 value1 value2 = (output3855, value702, value1) := by
  rw [input3855_def, output3855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3843]
  try dsimp only
  rw [child3854]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

theorem node3856_cond_eq
    (child3814 : Flapjack.WordAlloc.removeDeadStructural input3814 value693 value1 value2 = (output3814, value693, value1))
    (child3855 : Flapjack.WordAlloc.removeDeadStructural input3855 value693 value1 value2 = (output3855, value702, value1)) : Flapjack.WordAlloc.removeDeadStructural input3856 value693 value1 value2 = (output3856, value702, value1) := by
  rw [input3856_def, output3856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3814]
  try dsimp only
  rw [child3855]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3857 value702 value1 value2 = (output3857, value700, value1) := by
  rw [input3857_def, output3857_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3858 value700 value1 value2 = (output3858, value703, value1) := by
  rw [input3858_def, output3858_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3859_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3859 value703 value1 value2 = (output3859, value703, value1) := by
  rw [input3859_def, output3859_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3860 value703 value1 value2 = (output3860, value703, value1) := by
  rw [input3860_def, output3860_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3861 value703 value1 value2 = (output3861, value703, value1) := by
  rw [input3861_def, output3861_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3862 value703 value1 value2 = (output3862, value703, value1) := by
  rw [input3862_def, output3862_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3863_cond_eq
    (child3861 : Flapjack.WordAlloc.removeDeadStructural input3861 value703 value1 value2 = (output3861, value703, value1))
    (child3862 : Flapjack.WordAlloc.removeDeadStructural input3862 value703 value1 value2 = (output3862, value703, value1)) : Flapjack.WordAlloc.removeDeadStructural input3863 value703 value1 value2 = (output3863, value703, value1) := by
  rw [input3863_def, output3863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3861]
  try dsimp only
  rw [child3862]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3864_cond_eq
    (child3860 : Flapjack.WordAlloc.removeDeadStructural input3860 value703 value1 value2 = (output3860, value703, value1))
    (child3863 : Flapjack.WordAlloc.removeDeadStructural input3863 value703 value1 value2 = (output3863, value703, value1)) : Flapjack.WordAlloc.removeDeadStructural input3864 value703 value1 value2 = (output3864, value703, value1) := by
  rw [input3864_def, output3864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3860]
  try dsimp only
  rw [child3863]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3865 value703 value1 value2 = (output3865, value703, value1) := by
  rw [input3865_def, output3865_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3866 value703 value1 value2 = (output3866, value703, value1) := by
  rw [input3866_def, output3866_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3867 value703 value1 value2 = (output3867, value698, value1) := by
  rw [input3867_def, output3867_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3868 value698 value1 value2 = (output3868, value698, value1) := by
  rw [input3868_def, output3868_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3869_cond_eq
    (child3867 : Flapjack.WordAlloc.removeDeadStructural input3867 value703 value1 value2 = (output3867, value698, value1))
    (child3868 : Flapjack.WordAlloc.removeDeadStructural input3868 value698 value1 value2 = (output3868, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input3869 value703 value1 value2 = (output3869, value698, value1) := by
  rw [input3869_def, output3869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3867]
  try dsimp only
  rw [child3868]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3870_cond_eq
    (child3866 : Flapjack.WordAlloc.removeDeadStructural input3866 value703 value1 value2 = (output3866, value703, value1))
    (child3869 : Flapjack.WordAlloc.removeDeadStructural input3869 value703 value1 value2 = (output3869, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input3870 value703 value1 value2 = (output3870, value698, value1) := by
  rw [input3870_def, output3870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3866]
  try dsimp only
  rw [child3869]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3871_cond_eq
    (child3865 : Flapjack.WordAlloc.removeDeadStructural input3865 value703 value1 value2 = (output3865, value703, value1))
    (child3870 : Flapjack.WordAlloc.removeDeadStructural input3870 value703 value1 value2 = (output3870, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input3871 value703 value1 value2 = (output3871, value698, value1) := by
  rw [input3871_def, output3871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3865]
  try dsimp only
  rw [child3870]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3872 value698 value1 value2 = (output3872, value704, value1) := by
  rw [input3872_def, output3872_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3873_cond_eq
    (child3871 : Flapjack.WordAlloc.removeDeadStructural input3871 value703 value1 value2 = (output3871, value698, value1))
    (child3872 : Flapjack.WordAlloc.removeDeadStructural input3872 value698 value1 value2 = (output3872, value704, value1)) : Flapjack.WordAlloc.removeDeadStructural input3873 value703 value1 value2 = (output3873, value704, value1) := by
  rw [input3873_def, output3873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3871]
  try dsimp only
  rw [child3872]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3874 value704 value1 value2 = (output3874, value705, value1) := by
  rw [input3874_def, output3874_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3875 value705 value1 value2 = (output3875, value706, value1) := by
  rw [input3875_def, output3875_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3876_cond_eq
    (child3874 : Flapjack.WordAlloc.removeDeadStructural input3874 value704 value1 value2 = (output3874, value705, value1))
    (child3875 : Flapjack.WordAlloc.removeDeadStructural input3875 value705 value1 value2 = (output3875, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input3876 value704 value1 value2 = (output3876, value706, value1) := by
  rw [input3876_def, output3876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3874]
  try dsimp only
  rw [child3875]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3877 value706 value1 value2 = (output3877, value704, value1) := by
  rw [input3877_def, output3877_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3878 value704 value1 value2 = (output3878, value704, value1) := by
  rw [input3878_def, output3878_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3879 value704 value1 value2 = (output3879, value707, value1) := by
  rw [input3879_def, output3879_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3880 value707 value1 value2 = (output3880, value707, value1) := by
  rw [input3880_def, output3880_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3881_cond_eq
    (child3879 : Flapjack.WordAlloc.removeDeadStructural input3879 value704 value1 value2 = (output3879, value707, value1))
    (child3880 : Flapjack.WordAlloc.removeDeadStructural input3880 value707 value1 value2 = (output3880, value707, value1)) : Flapjack.WordAlloc.removeDeadStructural input3881 value704 value1 value2 = (output3881, value707, value1) := by
  rw [input3881_def, output3881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3879]
  try dsimp only
  rw [child3880]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3882 value707 value1 value2 = (output3882, value708, value1) := by
  rw [input3882_def, output3882_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3883_cond_eq
    (child3881 : Flapjack.WordAlloc.removeDeadStructural input3881 value704 value1 value2 = (output3881, value707, value1))
    (child3882 : Flapjack.WordAlloc.removeDeadStructural input3882 value707 value1 value2 = (output3882, value708, value1)) : Flapjack.WordAlloc.removeDeadStructural input3883 value704 value1 value2 = (output3883, value708, value1) := by
  rw [input3883_def, output3883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3881]
  try dsimp only
  rw [child3882]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3884 value708 value1 value2 = (output3884, value708, value1) := by
  rw [input3884_def, output3884_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3885 value708 value1 value2 = (output3885, value708, value1) := by
  rw [input3885_def, output3885_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3886 value708 value1 value2 = (output3886, value708, value1) := by
  rw [input3886_def, output3886_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3887_cond_eq
    (child3885 : Flapjack.WordAlloc.removeDeadStructural input3885 value708 value1 value2 = (output3885, value708, value1))
    (child3886 : Flapjack.WordAlloc.removeDeadStructural input3886 value708 value1 value2 = (output3886, value708, value1)) : Flapjack.WordAlloc.removeDeadStructural input3887 value708 value1 value2 = (output3887, value708, value1) := by
  rw [input3887_def, output3887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3885]
  try dsimp only
  rw [child3886]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3888_cond_eq
    (child3884 : Flapjack.WordAlloc.removeDeadStructural input3884 value708 value1 value2 = (output3884, value708, value1))
    (child3887 : Flapjack.WordAlloc.removeDeadStructural input3887 value708 value1 value2 = (output3887, value708, value1)) : Flapjack.WordAlloc.removeDeadStructural input3888 value708 value1 value2 = (output3888, value708, value1) := by
  rw [input3888_def, output3888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3884]
  try dsimp only
  rw [child3887]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3889_cond_eq
    (child3883 : Flapjack.WordAlloc.removeDeadStructural input3883 value704 value1 value2 = (output3883, value708, value1))
    (child3888 : Flapjack.WordAlloc.removeDeadStructural input3888 value708 value1 value2 = (output3888, value708, value1)) : Flapjack.WordAlloc.removeDeadStructural input3889 value704 value1 value2 = (output3889, value708, value1) := by
  rw [input3889_def, output3889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3883]
  try dsimp only
  rw [child3888]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3890_cond_eq
    (child3878 : Flapjack.WordAlloc.removeDeadStructural input3878 value704 value1 value2 = (output3878, value704, value1))
    (child3889 : Flapjack.WordAlloc.removeDeadStructural input3889 value704 value1 value2 = (output3889, value708, value1)) : Flapjack.WordAlloc.removeDeadStructural input3890 value704 value1 value2 = (output3890, value708, value1) := by
  rw [input3890_def, output3890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3878]
  try dsimp only
  rw [child3889]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3891_cond_eq
    (child3877 : Flapjack.WordAlloc.removeDeadStructural input3877 value706 value1 value2 = (output3877, value704, value1))
    (child3890 : Flapjack.WordAlloc.removeDeadStructural input3890 value704 value1 value2 = (output3890, value708, value1)) : Flapjack.WordAlloc.removeDeadStructural input3891 value706 value1 value2 = (output3891, value708, value1) := by
  rw [input3891_def, output3891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3877]
  try dsimp only
  rw [child3890]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3892_cond_eq
    (child3876 : Flapjack.WordAlloc.removeDeadStructural input3876 value704 value1 value2 = (output3876, value706, value1))
    (child3891 : Flapjack.WordAlloc.removeDeadStructural input3891 value706 value1 value2 = (output3891, value708, value1)) : Flapjack.WordAlloc.removeDeadStructural input3892 value704 value1 value2 = (output3892, value708, value1) := by
  rw [input3892_def, output3892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3876]
  try dsimp only
  rw [child3891]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3893_cond_eq
    (child3873 : Flapjack.WordAlloc.removeDeadStructural input3873 value703 value1 value2 = (output3873, value704, value1))
    (child3892 : Flapjack.WordAlloc.removeDeadStructural input3892 value704 value1 value2 = (output3892, value708, value1)) : Flapjack.WordAlloc.removeDeadStructural input3893 value703 value1 value2 = (output3893, value708, value1) := by
  rw [input3893_def, output3893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3873]
  try dsimp only
  rw [child3892]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3894 value703 value1 value2 = (output3894, value703, value1) := by
  rw [input3894_def, output3894_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3895 value703 value1 value2 = (output3895, value703, value1) := by
  rw [input3895_def, output3895_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3896 value703 value1 value2 = (output3896, value709, value1) := by
  rw [input3896_def, output3896_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3897 value709 value1 value2 = (output3897, value709, value1) := by
  rw [input3897_def, output3897_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3898_cond_eq
    (child3896 : Flapjack.WordAlloc.removeDeadStructural input3896 value703 value1 value2 = (output3896, value709, value1))
    (child3897 : Flapjack.WordAlloc.removeDeadStructural input3897 value709 value1 value2 = (output3897, value709, value1)) : Flapjack.WordAlloc.removeDeadStructural input3898 value703 value1 value2 = (output3898, value709, value1) := by
  rw [input3898_def, output3898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3896]
  try dsimp only
  rw [child3897]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3899_cond_eq
    (child3895 : Flapjack.WordAlloc.removeDeadStructural input3895 value703 value1 value2 = (output3895, value703, value1))
    (child3898 : Flapjack.WordAlloc.removeDeadStructural input3898 value703 value1 value2 = (output3898, value709, value1)) : Flapjack.WordAlloc.removeDeadStructural input3899 value703 value1 value2 = (output3899, value709, value1) := by
  rw [input3899_def, output3899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3895]
  try dsimp only
  rw [child3898]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3900_cond_eq
    (child3894 : Flapjack.WordAlloc.removeDeadStructural input3894 value703 value1 value2 = (output3894, value703, value1))
    (child3899 : Flapjack.WordAlloc.removeDeadStructural input3899 value703 value1 value2 = (output3899, value709, value1)) : Flapjack.WordAlloc.removeDeadStructural input3900 value703 value1 value2 = (output3900, value709, value1) := by
  rw [input3900_def, output3900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3894]
  try dsimp only
  rw [child3899]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3901 value709 value1 value2 = (output3901, value710, value1) := by
  rw [input3901_def, output3901_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3902_cond_eq
    (child3900 : Flapjack.WordAlloc.removeDeadStructural input3900 value703 value1 value2 = (output3900, value709, value1))
    (child3901 : Flapjack.WordAlloc.removeDeadStructural input3901 value709 value1 value2 = (output3901, value710, value1)) : Flapjack.WordAlloc.removeDeadStructural input3902 value703 value1 value2 = (output3902, value710, value1) := by
  rw [input3902_def, output3902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3900]
  try dsimp only
  rw [child3901]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3903 value710 value1 value2 = (output3903, value710, value1) := by
  rw [input3903_def, output3903_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3904_cond_eq
    (child3902 : Flapjack.WordAlloc.removeDeadStructural input3902 value703 value1 value2 = (output3902, value710, value1))
    (child3903 : Flapjack.WordAlloc.removeDeadStructural input3903 value710 value1 value2 = (output3903, value710, value1)) : Flapjack.WordAlloc.removeDeadStructural input3904 value703 value1 value2 = (output3904, value710, value1) := by
  rw [input3904_def, output3904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3902]
  try dsimp only
  rw [child3903]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3905_cond_eq
    (child3893 : Flapjack.WordAlloc.removeDeadStructural input3893 value703 value1 value2 = (output3893, value708, value1))
    (child3904 : Flapjack.WordAlloc.removeDeadStructural input3904 value703 value1 value2 = (output3904, value710, value1)) : Flapjack.WordAlloc.removeDeadStructural input3905 value703 value1 value2 = (output3905, value712, value1) := by
  rw [input3905_def, output3905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3893]
  try dsimp only
  rw [child3904]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

theorem node3906_cond_eq
    (child3864 : Flapjack.WordAlloc.removeDeadStructural input3864 value703 value1 value2 = (output3864, value703, value1))
    (child3905 : Flapjack.WordAlloc.removeDeadStructural input3905 value703 value1 value2 = (output3905, value712, value1)) : Flapjack.WordAlloc.removeDeadStructural input3906 value703 value1 value2 = (output3906, value712, value1) := by
  rw [input3906_def, output3906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3864]
  try dsimp only
  rw [child3905]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3907 value712 value1 value2 = (output3907, value710, value1) := by
  rw [input3907_def, output3907_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3908 value710 value1 value2 = (output3908, value713, value1) := by
  rw [input3908_def, output3908_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3909 value713 value1 value2 = (output3909, value713, value1) := by
  rw [input3909_def, output3909_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3910 value713 value1 value2 = (output3910, value713, value1) := by
  rw [input3910_def, output3910_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3911 value713 value1 value2 = (output3911, value713, value1) := by
  rw [input3911_def, output3911_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3912_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3912 value713 value1 value2 = (output3912, value713, value1) := by
  rw [input3912_def, output3912_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3913_cond_eq
    (child3911 : Flapjack.WordAlloc.removeDeadStructural input3911 value713 value1 value2 = (output3911, value713, value1))
    (child3912 : Flapjack.WordAlloc.removeDeadStructural input3912 value713 value1 value2 = (output3912, value713, value1)) : Flapjack.WordAlloc.removeDeadStructural input3913 value713 value1 value2 = (output3913, value713, value1) := by
  rw [input3913_def, output3913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3911]
  try dsimp only
  rw [child3912]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3914_cond_eq
    (child3910 : Flapjack.WordAlloc.removeDeadStructural input3910 value713 value1 value2 = (output3910, value713, value1))
    (child3913 : Flapjack.WordAlloc.removeDeadStructural input3913 value713 value1 value2 = (output3913, value713, value1)) : Flapjack.WordAlloc.removeDeadStructural input3914 value713 value1 value2 = (output3914, value713, value1) := by
  rw [input3914_def, output3914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3910]
  try dsimp only
  rw [child3913]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3915_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3915 value713 value1 value2 = (output3915, value713, value1) := by
  rw [input3915_def, output3915_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3916 value713 value1 value2 = (output3916, value713, value1) := by
  rw [input3916_def, output3916_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3917 value713 value1 value2 = (output3917, value708, value1) := by
  rw [input3917_def, output3917_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3918 value708 value1 value2 = (output3918, value708, value1) := by
  rw [input3918_def, output3918_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3919_cond_eq
    (child3917 : Flapjack.WordAlloc.removeDeadStructural input3917 value713 value1 value2 = (output3917, value708, value1))
    (child3918 : Flapjack.WordAlloc.removeDeadStructural input3918 value708 value1 value2 = (output3918, value708, value1)) : Flapjack.WordAlloc.removeDeadStructural input3919 value713 value1 value2 = (output3919, value708, value1) := by
  rw [input3919_def, output3919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3917]
  try dsimp only
  rw [child3918]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3920_cond_eq
    (child3916 : Flapjack.WordAlloc.removeDeadStructural input3916 value713 value1 value2 = (output3916, value713, value1))
    (child3919 : Flapjack.WordAlloc.removeDeadStructural input3919 value713 value1 value2 = (output3919, value708, value1)) : Flapjack.WordAlloc.removeDeadStructural input3920 value713 value1 value2 = (output3920, value708, value1) := by
  rw [input3920_def, output3920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3916]
  try dsimp only
  rw [child3919]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3921_cond_eq
    (child3915 : Flapjack.WordAlloc.removeDeadStructural input3915 value713 value1 value2 = (output3915, value713, value1))
    (child3920 : Flapjack.WordAlloc.removeDeadStructural input3920 value713 value1 value2 = (output3920, value708, value1)) : Flapjack.WordAlloc.removeDeadStructural input3921 value713 value1 value2 = (output3921, value708, value1) := by
  rw [input3921_def, output3921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3915]
  try dsimp only
  rw [child3920]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3922 value708 value1 value2 = (output3922, value714, value1) := by
  rw [input3922_def, output3922_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3923_cond_eq
    (child3921 : Flapjack.WordAlloc.removeDeadStructural input3921 value713 value1 value2 = (output3921, value708, value1))
    (child3922 : Flapjack.WordAlloc.removeDeadStructural input3922 value708 value1 value2 = (output3922, value714, value1)) : Flapjack.WordAlloc.removeDeadStructural input3923 value713 value1 value2 = (output3923, value714, value1) := by
  rw [input3923_def, output3923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3921]
  try dsimp only
  rw [child3922]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3924 value714 value1 value2 = (output3924, value715, value1) := by
  rw [input3924_def, output3924_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3925 value715 value1 value2 = (output3925, value716, value1) := by
  rw [input3925_def, output3925_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3926_cond_eq
    (child3924 : Flapjack.WordAlloc.removeDeadStructural input3924 value714 value1 value2 = (output3924, value715, value1))
    (child3925 : Flapjack.WordAlloc.removeDeadStructural input3925 value715 value1 value2 = (output3925, value716, value1)) : Flapjack.WordAlloc.removeDeadStructural input3926 value714 value1 value2 = (output3926, value716, value1) := by
  rw [input3926_def, output3926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3924]
  try dsimp only
  rw [child3925]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3927 value716 value1 value2 = (output3927, value714, value1) := by
  rw [input3927_def, output3927_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3928 value714 value1 value2 = (output3928, value714, value1) := by
  rw [input3928_def, output3928_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3929_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3929 value714 value1 value2 = (output3929, value717, value1) := by
  rw [input3929_def, output3929_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3930 value717 value1 value2 = (output3930, value717, value1) := by
  rw [input3930_def, output3930_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3931_cond_eq
    (child3929 : Flapjack.WordAlloc.removeDeadStructural input3929 value714 value1 value2 = (output3929, value717, value1))
    (child3930 : Flapjack.WordAlloc.removeDeadStructural input3930 value717 value1 value2 = (output3930, value717, value1)) : Flapjack.WordAlloc.removeDeadStructural input3931 value714 value1 value2 = (output3931, value717, value1) := by
  rw [input3931_def, output3931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3929]
  try dsimp only
  rw [child3930]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3932 value717 value1 value2 = (output3932, value718, value1) := by
  rw [input3932_def, output3932_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3933_cond_eq
    (child3931 : Flapjack.WordAlloc.removeDeadStructural input3931 value714 value1 value2 = (output3931, value717, value1))
    (child3932 : Flapjack.WordAlloc.removeDeadStructural input3932 value717 value1 value2 = (output3932, value718, value1)) : Flapjack.WordAlloc.removeDeadStructural input3933 value714 value1 value2 = (output3933, value718, value1) := by
  rw [input3933_def, output3933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3931]
  try dsimp only
  rw [child3932]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3934 value718 value1 value2 = (output3934, value718, value1) := by
  rw [input3934_def, output3934_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3935 value718 value1 value2 = (output3935, value718, value1) := by
  rw [input3935_def, output3935_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3936 value718 value1 value2 = (output3936, value718, value1) := by
  rw [input3936_def, output3936_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3937_cond_eq
    (child3935 : Flapjack.WordAlloc.removeDeadStructural input3935 value718 value1 value2 = (output3935, value718, value1))
    (child3936 : Flapjack.WordAlloc.removeDeadStructural input3936 value718 value1 value2 = (output3936, value718, value1)) : Flapjack.WordAlloc.removeDeadStructural input3937 value718 value1 value2 = (output3937, value718, value1) := by
  rw [input3937_def, output3937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3935]
  try dsimp only
  rw [child3936]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3938_cond_eq
    (child3934 : Flapjack.WordAlloc.removeDeadStructural input3934 value718 value1 value2 = (output3934, value718, value1))
    (child3937 : Flapjack.WordAlloc.removeDeadStructural input3937 value718 value1 value2 = (output3937, value718, value1)) : Flapjack.WordAlloc.removeDeadStructural input3938 value718 value1 value2 = (output3938, value718, value1) := by
  rw [input3938_def, output3938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3934]
  try dsimp only
  rw [child3937]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3939_cond_eq
    (child3933 : Flapjack.WordAlloc.removeDeadStructural input3933 value714 value1 value2 = (output3933, value718, value1))
    (child3938 : Flapjack.WordAlloc.removeDeadStructural input3938 value718 value1 value2 = (output3938, value718, value1)) : Flapjack.WordAlloc.removeDeadStructural input3939 value714 value1 value2 = (output3939, value718, value1) := by
  rw [input3939_def, output3939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3933]
  try dsimp only
  rw [child3938]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3940_cond_eq
    (child3928 : Flapjack.WordAlloc.removeDeadStructural input3928 value714 value1 value2 = (output3928, value714, value1))
    (child3939 : Flapjack.WordAlloc.removeDeadStructural input3939 value714 value1 value2 = (output3939, value718, value1)) : Flapjack.WordAlloc.removeDeadStructural input3940 value714 value1 value2 = (output3940, value718, value1) := by
  rw [input3940_def, output3940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3928]
  try dsimp only
  rw [child3939]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3941_cond_eq
    (child3927 : Flapjack.WordAlloc.removeDeadStructural input3927 value716 value1 value2 = (output3927, value714, value1))
    (child3940 : Flapjack.WordAlloc.removeDeadStructural input3940 value714 value1 value2 = (output3940, value718, value1)) : Flapjack.WordAlloc.removeDeadStructural input3941 value716 value1 value2 = (output3941, value718, value1) := by
  rw [input3941_def, output3941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3927]
  try dsimp only
  rw [child3940]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3942_cond_eq
    (child3926 : Flapjack.WordAlloc.removeDeadStructural input3926 value714 value1 value2 = (output3926, value716, value1))
    (child3941 : Flapjack.WordAlloc.removeDeadStructural input3941 value716 value1 value2 = (output3941, value718, value1)) : Flapjack.WordAlloc.removeDeadStructural input3942 value714 value1 value2 = (output3942, value718, value1) := by
  rw [input3942_def, output3942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3926]
  try dsimp only
  rw [child3941]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3943_cond_eq
    (child3923 : Flapjack.WordAlloc.removeDeadStructural input3923 value713 value1 value2 = (output3923, value714, value1))
    (child3942 : Flapjack.WordAlloc.removeDeadStructural input3942 value714 value1 value2 = (output3942, value718, value1)) : Flapjack.WordAlloc.removeDeadStructural input3943 value713 value1 value2 = (output3943, value718, value1) := by
  rw [input3943_def, output3943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3923]
  try dsimp only
  rw [child3942]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3944 value713 value1 value2 = (output3944, value713, value1) := by
  rw [input3944_def, output3944_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3945 value713 value1 value2 = (output3945, value713, value1) := by
  rw [input3945_def, output3945_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3946 value713 value1 value2 = (output3946, value719, value1) := by
  rw [input3946_def, output3946_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3947 value719 value1 value2 = (output3947, value719, value1) := by
  rw [input3947_def, output3947_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3948_cond_eq
    (child3946 : Flapjack.WordAlloc.removeDeadStructural input3946 value713 value1 value2 = (output3946, value719, value1))
    (child3947 : Flapjack.WordAlloc.removeDeadStructural input3947 value719 value1 value2 = (output3947, value719, value1)) : Flapjack.WordAlloc.removeDeadStructural input3948 value713 value1 value2 = (output3948, value719, value1) := by
  rw [input3948_def, output3948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3946]
  try dsimp only
  rw [child3947]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3949_cond_eq
    (child3945 : Flapjack.WordAlloc.removeDeadStructural input3945 value713 value1 value2 = (output3945, value713, value1))
    (child3948 : Flapjack.WordAlloc.removeDeadStructural input3948 value713 value1 value2 = (output3948, value719, value1)) : Flapjack.WordAlloc.removeDeadStructural input3949 value713 value1 value2 = (output3949, value719, value1) := by
  rw [input3949_def, output3949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3945]
  try dsimp only
  rw [child3948]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3950_cond_eq
    (child3944 : Flapjack.WordAlloc.removeDeadStructural input3944 value713 value1 value2 = (output3944, value713, value1))
    (child3949 : Flapjack.WordAlloc.removeDeadStructural input3949 value713 value1 value2 = (output3949, value719, value1)) : Flapjack.WordAlloc.removeDeadStructural input3950 value713 value1 value2 = (output3950, value719, value1) := by
  rw [input3950_def, output3950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3944]
  try dsimp only
  rw [child3949]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3951 value719 value1 value2 = (output3951, value720, value1) := by
  rw [input3951_def, output3951_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3952_cond_eq
    (child3950 : Flapjack.WordAlloc.removeDeadStructural input3950 value713 value1 value2 = (output3950, value719, value1))
    (child3951 : Flapjack.WordAlloc.removeDeadStructural input3951 value719 value1 value2 = (output3951, value720, value1)) : Flapjack.WordAlloc.removeDeadStructural input3952 value713 value1 value2 = (output3952, value720, value1) := by
  rw [input3952_def, output3952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3950]
  try dsimp only
  rw [child3951]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3953 value720 value1 value2 = (output3953, value720, value1) := by
  rw [input3953_def, output3953_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3954_cond_eq
    (child3952 : Flapjack.WordAlloc.removeDeadStructural input3952 value713 value1 value2 = (output3952, value720, value1))
    (child3953 : Flapjack.WordAlloc.removeDeadStructural input3953 value720 value1 value2 = (output3953, value720, value1)) : Flapjack.WordAlloc.removeDeadStructural input3954 value713 value1 value2 = (output3954, value720, value1) := by
  rw [input3954_def, output3954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3952]
  try dsimp only
  rw [child3953]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3955_cond_eq
    (child3943 : Flapjack.WordAlloc.removeDeadStructural input3943 value713 value1 value2 = (output3943, value718, value1))
    (child3954 : Flapjack.WordAlloc.removeDeadStructural input3954 value713 value1 value2 = (output3954, value720, value1)) : Flapjack.WordAlloc.removeDeadStructural input3955 value713 value1 value2 = (output3955, value722, value1) := by
  rw [input3955_def, output3955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3943]
  try dsimp only
  rw [child3954]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

theorem node3956_cond_eq
    (child3914 : Flapjack.WordAlloc.removeDeadStructural input3914 value713 value1 value2 = (output3914, value713, value1))
    (child3955 : Flapjack.WordAlloc.removeDeadStructural input3955 value713 value1 value2 = (output3955, value722, value1)) : Flapjack.WordAlloc.removeDeadStructural input3956 value713 value1 value2 = (output3956, value722, value1) := by
  rw [input3956_def, output3956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3914]
  try dsimp only
  rw [child3955]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3957 value722 value1 value2 = (output3957, value720, value1) := by
  rw [input3957_def, output3957_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3958 value720 value1 value2 = (output3958, value723, value1) := by
  rw [input3958_def, output3958_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3959 value723 value1 value2 = (output3959, value723, value1) := by
  rw [input3959_def, output3959_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3960_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3960 value723 value1 value2 = (output3960, value723, value1) := by
  rw [input3960_def, output3960_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3961_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3961 value723 value1 value2 = (output3961, value723, value1) := by
  rw [input3961_def, output3961_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3962_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3962 value723 value1 value2 = (output3962, value723, value1) := by
  rw [input3962_def, output3962_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3963_cond_eq
    (child3961 : Flapjack.WordAlloc.removeDeadStructural input3961 value723 value1 value2 = (output3961, value723, value1))
    (child3962 : Flapjack.WordAlloc.removeDeadStructural input3962 value723 value1 value2 = (output3962, value723, value1)) : Flapjack.WordAlloc.removeDeadStructural input3963 value723 value1 value2 = (output3963, value723, value1) := by
  rw [input3963_def, output3963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3961]
  try dsimp only
  rw [child3962]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3964_cond_eq
    (child3960 : Flapjack.WordAlloc.removeDeadStructural input3960 value723 value1 value2 = (output3960, value723, value1))
    (child3963 : Flapjack.WordAlloc.removeDeadStructural input3963 value723 value1 value2 = (output3963, value723, value1)) : Flapjack.WordAlloc.removeDeadStructural input3964 value723 value1 value2 = (output3964, value723, value1) := by
  rw [input3964_def, output3964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3960]
  try dsimp only
  rw [child3963]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3965 value723 value1 value2 = (output3965, value723, value1) := by
  rw [input3965_def, output3965_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3966 value723 value1 value2 = (output3966, value723, value1) := by
  rw [input3966_def, output3966_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3967 value723 value1 value2 = (output3967, value718, value1) := by
  rw [input3967_def, output3967_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3968 value718 value1 value2 = (output3968, value718, value1) := by
  rw [input3968_def, output3968_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3969_cond_eq
    (child3967 : Flapjack.WordAlloc.removeDeadStructural input3967 value723 value1 value2 = (output3967, value718, value1))
    (child3968 : Flapjack.WordAlloc.removeDeadStructural input3968 value718 value1 value2 = (output3968, value718, value1)) : Flapjack.WordAlloc.removeDeadStructural input3969 value723 value1 value2 = (output3969, value718, value1) := by
  rw [input3969_def, output3969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3967]
  try dsimp only
  rw [child3968]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3970_cond_eq
    (child3966 : Flapjack.WordAlloc.removeDeadStructural input3966 value723 value1 value2 = (output3966, value723, value1))
    (child3969 : Flapjack.WordAlloc.removeDeadStructural input3969 value723 value1 value2 = (output3969, value718, value1)) : Flapjack.WordAlloc.removeDeadStructural input3970 value723 value1 value2 = (output3970, value718, value1) := by
  rw [input3970_def, output3970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3966]
  try dsimp only
  rw [child3969]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3971_cond_eq
    (child3965 : Flapjack.WordAlloc.removeDeadStructural input3965 value723 value1 value2 = (output3965, value723, value1))
    (child3970 : Flapjack.WordAlloc.removeDeadStructural input3970 value723 value1 value2 = (output3970, value718, value1)) : Flapjack.WordAlloc.removeDeadStructural input3971 value723 value1 value2 = (output3971, value718, value1) := by
  rw [input3971_def, output3971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3965]
  try dsimp only
  rw [child3970]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3972 value718 value1 value2 = (output3972, value724, value1) := by
  rw [input3972_def, output3972_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3973_cond_eq
    (child3971 : Flapjack.WordAlloc.removeDeadStructural input3971 value723 value1 value2 = (output3971, value718, value1))
    (child3972 : Flapjack.WordAlloc.removeDeadStructural input3972 value718 value1 value2 = (output3972, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input3973 value723 value1 value2 = (output3973, value724, value1) := by
  rw [input3973_def, output3973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3971]
  try dsimp only
  rw [child3972]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3974_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3974 value724 value1 value2 = (output3974, value725, value1) := by
  rw [input3974_def, output3974_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3975 value725 value1 value2 = (output3975, value726, value1) := by
  rw [input3975_def, output3975_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3976_cond_eq
    (child3974 : Flapjack.WordAlloc.removeDeadStructural input3974 value724 value1 value2 = (output3974, value725, value1))
    (child3975 : Flapjack.WordAlloc.removeDeadStructural input3975 value725 value1 value2 = (output3975, value726, value1)) : Flapjack.WordAlloc.removeDeadStructural input3976 value724 value1 value2 = (output3976, value726, value1) := by
  rw [input3976_def, output3976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3974]
  try dsimp only
  rw [child3975]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3977 value726 value1 value2 = (output3977, value724, value1) := by
  rw [input3977_def, output3977_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3978 value724 value1 value2 = (output3978, value724, value1) := by
  rw [input3978_def, output3978_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3979 value724 value1 value2 = (output3979, value727, value1) := by
  rw [input3979_def, output3979_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3980 value727 value1 value2 = (output3980, value727, value1) := by
  rw [input3980_def, output3980_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3981_cond_eq
    (child3979 : Flapjack.WordAlloc.removeDeadStructural input3979 value724 value1 value2 = (output3979, value727, value1))
    (child3980 : Flapjack.WordAlloc.removeDeadStructural input3980 value727 value1 value2 = (output3980, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input3981 value724 value1 value2 = (output3981, value727, value1) := by
  rw [input3981_def, output3981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3979]
  try dsimp only
  rw [child3980]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3982 value727 value1 value2 = (output3982, value728, value1) := by
  rw [input3982_def, output3982_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3983_cond_eq
    (child3981 : Flapjack.WordAlloc.removeDeadStructural input3981 value724 value1 value2 = (output3981, value727, value1))
    (child3982 : Flapjack.WordAlloc.removeDeadStructural input3982 value727 value1 value2 = (output3982, value728, value1)) : Flapjack.WordAlloc.removeDeadStructural input3983 value724 value1 value2 = (output3983, value728, value1) := by
  rw [input3983_def, output3983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3981]
  try dsimp only
  rw [child3982]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3984 value728 value1 value2 = (output3984, value728, value1) := by
  rw [input3984_def, output3984_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3985 value728 value1 value2 = (output3985, value728, value1) := by
  rw [input3985_def, output3985_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3986 value728 value1 value2 = (output3986, value728, value1) := by
  rw [input3986_def, output3986_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3987_cond_eq
    (child3985 : Flapjack.WordAlloc.removeDeadStructural input3985 value728 value1 value2 = (output3985, value728, value1))
    (child3986 : Flapjack.WordAlloc.removeDeadStructural input3986 value728 value1 value2 = (output3986, value728, value1)) : Flapjack.WordAlloc.removeDeadStructural input3987 value728 value1 value2 = (output3987, value728, value1) := by
  rw [input3987_def, output3987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3985]
  try dsimp only
  rw [child3986]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3988_cond_eq
    (child3984 : Flapjack.WordAlloc.removeDeadStructural input3984 value728 value1 value2 = (output3984, value728, value1))
    (child3987 : Flapjack.WordAlloc.removeDeadStructural input3987 value728 value1 value2 = (output3987, value728, value1)) : Flapjack.WordAlloc.removeDeadStructural input3988 value728 value1 value2 = (output3988, value728, value1) := by
  rw [input3988_def, output3988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3984]
  try dsimp only
  rw [child3987]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3989_cond_eq
    (child3983 : Flapjack.WordAlloc.removeDeadStructural input3983 value724 value1 value2 = (output3983, value728, value1))
    (child3988 : Flapjack.WordAlloc.removeDeadStructural input3988 value728 value1 value2 = (output3988, value728, value1)) : Flapjack.WordAlloc.removeDeadStructural input3989 value724 value1 value2 = (output3989, value728, value1) := by
  rw [input3989_def, output3989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3983]
  try dsimp only
  rw [child3988]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3990_cond_eq
    (child3978 : Flapjack.WordAlloc.removeDeadStructural input3978 value724 value1 value2 = (output3978, value724, value1))
    (child3989 : Flapjack.WordAlloc.removeDeadStructural input3989 value724 value1 value2 = (output3989, value728, value1)) : Flapjack.WordAlloc.removeDeadStructural input3990 value724 value1 value2 = (output3990, value728, value1) := by
  rw [input3990_def, output3990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3978]
  try dsimp only
  rw [child3989]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3991_cond_eq
    (child3977 : Flapjack.WordAlloc.removeDeadStructural input3977 value726 value1 value2 = (output3977, value724, value1))
    (child3990 : Flapjack.WordAlloc.removeDeadStructural input3990 value724 value1 value2 = (output3990, value728, value1)) : Flapjack.WordAlloc.removeDeadStructural input3991 value726 value1 value2 = (output3991, value728, value1) := by
  rw [input3991_def, output3991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3977]
  try dsimp only
  rw [child3990]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3992_cond_eq
    (child3976 : Flapjack.WordAlloc.removeDeadStructural input3976 value724 value1 value2 = (output3976, value726, value1))
    (child3991 : Flapjack.WordAlloc.removeDeadStructural input3991 value726 value1 value2 = (output3991, value728, value1)) : Flapjack.WordAlloc.removeDeadStructural input3992 value724 value1 value2 = (output3992, value728, value1) := by
  rw [input3992_def, output3992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3976]
  try dsimp only
  rw [child3991]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3993_cond_eq
    (child3973 : Flapjack.WordAlloc.removeDeadStructural input3973 value723 value1 value2 = (output3973, value724, value1))
    (child3992 : Flapjack.WordAlloc.removeDeadStructural input3992 value724 value1 value2 = (output3992, value728, value1)) : Flapjack.WordAlloc.removeDeadStructural input3993 value723 value1 value2 = (output3993, value728, value1) := by
  rw [input3993_def, output3993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3973]
  try dsimp only
  rw [child3992]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3994 value723 value1 value2 = (output3994, value723, value1) := by
  rw [input3994_def, output3994_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3995_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3995 value723 value1 value2 = (output3995, value723, value1) := by
  rw [input3995_def, output3995_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3996 value723 value1 value2 = (output3996, value729, value1) := by
  rw [input3996_def, output3996_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3997 value729 value1 value2 = (output3997, value729, value1) := by
  rw [input3997_def, output3997_def]
  try (conv => lhs; cbv)
  try rfl

theorem node3998_cond_eq
    (child3996 : Flapjack.WordAlloc.removeDeadStructural input3996 value723 value1 value2 = (output3996, value729, value1))
    (child3997 : Flapjack.WordAlloc.removeDeadStructural input3997 value729 value1 value2 = (output3997, value729, value1)) : Flapjack.WordAlloc.removeDeadStructural input3998 value723 value1 value2 = (output3998, value729, value1) := by
  rw [input3998_def, output3998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3996]
  try dsimp only
  rw [child3997]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3999_cond_eq
    (child3995 : Flapjack.WordAlloc.removeDeadStructural input3995 value723 value1 value2 = (output3995, value723, value1))
    (child3998 : Flapjack.WordAlloc.removeDeadStructural input3998 value723 value1 value2 = (output3998, value729, value1)) : Flapjack.WordAlloc.removeDeadStructural input3999 value723 value1 value2 = (output3999, value729, value1) := by
  rw [input3999_def, output3999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3995]
  try dsimp only
  rw [child3998]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4000_cond_eq
    (child3994 : Flapjack.WordAlloc.removeDeadStructural input3994 value723 value1 value2 = (output3994, value723, value1))
    (child3999 : Flapjack.WordAlloc.removeDeadStructural input3999 value723 value1 value2 = (output3999, value729, value1)) : Flapjack.WordAlloc.removeDeadStructural input4000 value723 value1 value2 = (output4000, value729, value1) := by
  rw [input4000_def, output4000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3994]
  try dsimp only
  rw [child3999]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4001 value729 value1 value2 = (output4001, value730, value1) := by
  rw [input4001_def, output4001_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4002_cond_eq
    (child4000 : Flapjack.WordAlloc.removeDeadStructural input4000 value723 value1 value2 = (output4000, value729, value1))
    (child4001 : Flapjack.WordAlloc.removeDeadStructural input4001 value729 value1 value2 = (output4001, value730, value1)) : Flapjack.WordAlloc.removeDeadStructural input4002 value723 value1 value2 = (output4002, value730, value1) := by
  rw [input4002_def, output4002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4000]
  try dsimp only
  rw [child4001]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4003 value730 value1 value2 = (output4003, value730, value1) := by
  rw [input4003_def, output4003_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4004_cond_eq
    (child4002 : Flapjack.WordAlloc.removeDeadStructural input4002 value723 value1 value2 = (output4002, value730, value1))
    (child4003 : Flapjack.WordAlloc.removeDeadStructural input4003 value730 value1 value2 = (output4003, value730, value1)) : Flapjack.WordAlloc.removeDeadStructural input4004 value723 value1 value2 = (output4004, value730, value1) := by
  rw [input4004_def, output4004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4002]
  try dsimp only
  rw [child4003]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4005_cond_eq
    (child3993 : Flapjack.WordAlloc.removeDeadStructural input3993 value723 value1 value2 = (output3993, value728, value1))
    (child4004 : Flapjack.WordAlloc.removeDeadStructural input4004 value723 value1 value2 = (output4004, value730, value1)) : Flapjack.WordAlloc.removeDeadStructural input4005 value723 value1 value2 = (output4005, value732, value1) := by
  rw [input4005_def, output4005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3993]
  try dsimp only
  rw [child4004]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

theorem node4006_cond_eq
    (child3964 : Flapjack.WordAlloc.removeDeadStructural input3964 value723 value1 value2 = (output3964, value723, value1))
    (child4005 : Flapjack.WordAlloc.removeDeadStructural input4005 value723 value1 value2 = (output4005, value732, value1)) : Flapjack.WordAlloc.removeDeadStructural input4006 value723 value1 value2 = (output4006, value732, value1) := by
  rw [input4006_def, output4006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3964]
  try dsimp only
  rw [child4005]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4007 value732 value1 value2 = (output4007, value730, value1) := by
  rw [input4007_def, output4007_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4008 value730 value1 value2 = (output4008, value733, value1) := by
  rw [input4008_def, output4008_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4009 value733 value1 value2 = (output4009, value733, value1) := by
  rw [input4009_def, output4009_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4010_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4010 value733 value1 value2 = (output4010, value733, value1) := by
  rw [input4010_def, output4010_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4011_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4011 value733 value1 value2 = (output4011, value733, value1) := by
  rw [input4011_def, output4011_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4012 value733 value1 value2 = (output4012, value733, value1) := by
  rw [input4012_def, output4012_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4013_cond_eq
    (child4011 : Flapjack.WordAlloc.removeDeadStructural input4011 value733 value1 value2 = (output4011, value733, value1))
    (child4012 : Flapjack.WordAlloc.removeDeadStructural input4012 value733 value1 value2 = (output4012, value733, value1)) : Flapjack.WordAlloc.removeDeadStructural input4013 value733 value1 value2 = (output4013, value733, value1) := by
  rw [input4013_def, output4013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4011]
  try dsimp only
  rw [child4012]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4014_cond_eq
    (child4010 : Flapjack.WordAlloc.removeDeadStructural input4010 value733 value1 value2 = (output4010, value733, value1))
    (child4013 : Flapjack.WordAlloc.removeDeadStructural input4013 value733 value1 value2 = (output4013, value733, value1)) : Flapjack.WordAlloc.removeDeadStructural input4014 value733 value1 value2 = (output4014, value733, value1) := by
  rw [input4014_def, output4014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4010]
  try dsimp only
  rw [child4013]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4015 value733 value1 value2 = (output4015, value733, value1) := by
  rw [input4015_def, output4015_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4016_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4016 value733 value1 value2 = (output4016, value733, value1) := by
  rw [input4016_def, output4016_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4017 value733 value1 value2 = (output4017, value728, value1) := by
  rw [input4017_def, output4017_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4018 value728 value1 value2 = (output4018, value728, value1) := by
  rw [input4018_def, output4018_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4019_cond_eq
    (child4017 : Flapjack.WordAlloc.removeDeadStructural input4017 value733 value1 value2 = (output4017, value728, value1))
    (child4018 : Flapjack.WordAlloc.removeDeadStructural input4018 value728 value1 value2 = (output4018, value728, value1)) : Flapjack.WordAlloc.removeDeadStructural input4019 value733 value1 value2 = (output4019, value728, value1) := by
  rw [input4019_def, output4019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4017]
  try dsimp only
  rw [child4018]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4020_cond_eq
    (child4016 : Flapjack.WordAlloc.removeDeadStructural input4016 value733 value1 value2 = (output4016, value733, value1))
    (child4019 : Flapjack.WordAlloc.removeDeadStructural input4019 value733 value1 value2 = (output4019, value728, value1)) : Flapjack.WordAlloc.removeDeadStructural input4020 value733 value1 value2 = (output4020, value728, value1) := by
  rw [input4020_def, output4020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4016]
  try dsimp only
  rw [child4019]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4021_cond_eq
    (child4015 : Flapjack.WordAlloc.removeDeadStructural input4015 value733 value1 value2 = (output4015, value733, value1))
    (child4020 : Flapjack.WordAlloc.removeDeadStructural input4020 value733 value1 value2 = (output4020, value728, value1)) : Flapjack.WordAlloc.removeDeadStructural input4021 value733 value1 value2 = (output4021, value728, value1) := by
  rw [input4021_def, output4021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4015]
  try dsimp only
  rw [child4020]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4022 value728 value1 value2 = (output4022, value734, value1) := by
  rw [input4022_def, output4022_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4023_cond_eq
    (child4021 : Flapjack.WordAlloc.removeDeadStructural input4021 value733 value1 value2 = (output4021, value728, value1))
    (child4022 : Flapjack.WordAlloc.removeDeadStructural input4022 value728 value1 value2 = (output4022, value734, value1)) : Flapjack.WordAlloc.removeDeadStructural input4023 value733 value1 value2 = (output4023, value734, value1) := by
  rw [input4023_def, output4023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4021]
  try dsimp only
  rw [child4022]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4024 value734 value1 value2 = (output4024, value735, value1) := by
  rw [input4024_def, output4024_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4025 value735 value1 value2 = (output4025, value736, value1) := by
  rw [input4025_def, output4025_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4026_cond_eq
    (child4024 : Flapjack.WordAlloc.removeDeadStructural input4024 value734 value1 value2 = (output4024, value735, value1))
    (child4025 : Flapjack.WordAlloc.removeDeadStructural input4025 value735 value1 value2 = (output4025, value736, value1)) : Flapjack.WordAlloc.removeDeadStructural input4026 value734 value1 value2 = (output4026, value736, value1) := by
  rw [input4026_def, output4026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4024]
  try dsimp only
  rw [child4025]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4027_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4027 value736 value1 value2 = (output4027, value734, value1) := by
  rw [input4027_def, output4027_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4028 value734 value1 value2 = (output4028, value734, value1) := by
  rw [input4028_def, output4028_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4029 value734 value1 value2 = (output4029, value737, value1) := by
  rw [input4029_def, output4029_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4030_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4030 value737 value1 value2 = (output4030, value737, value1) := by
  rw [input4030_def, output4030_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4031_cond_eq
    (child4029 : Flapjack.WordAlloc.removeDeadStructural input4029 value734 value1 value2 = (output4029, value737, value1))
    (child4030 : Flapjack.WordAlloc.removeDeadStructural input4030 value737 value1 value2 = (output4030, value737, value1)) : Flapjack.WordAlloc.removeDeadStructural input4031 value734 value1 value2 = (output4031, value737, value1) := by
  rw [input4031_def, output4031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4029]
  try dsimp only
  rw [child4030]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4032_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4032 value737 value1 value2 = (output4032, value738, value1) := by
  rw [input4032_def, output4032_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4033_cond_eq
    (child4031 : Flapjack.WordAlloc.removeDeadStructural input4031 value734 value1 value2 = (output4031, value737, value1))
    (child4032 : Flapjack.WordAlloc.removeDeadStructural input4032 value737 value1 value2 = (output4032, value738, value1)) : Flapjack.WordAlloc.removeDeadStructural input4033 value734 value1 value2 = (output4033, value738, value1) := by
  rw [input4033_def, output4033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4031]
  try dsimp only
  rw [child4032]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4034_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4034 value738 value1 value2 = (output4034, value738, value1) := by
  rw [input4034_def, output4034_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4035_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4035 value738 value1 value2 = (output4035, value738, value1) := by
  rw [input4035_def, output4035_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4036 value738 value1 value2 = (output4036, value738, value1) := by
  rw [input4036_def, output4036_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4037_cond_eq
    (child4035 : Flapjack.WordAlloc.removeDeadStructural input4035 value738 value1 value2 = (output4035, value738, value1))
    (child4036 : Flapjack.WordAlloc.removeDeadStructural input4036 value738 value1 value2 = (output4036, value738, value1)) : Flapjack.WordAlloc.removeDeadStructural input4037 value738 value1 value2 = (output4037, value738, value1) := by
  rw [input4037_def, output4037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4035]
  try dsimp only
  rw [child4036]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4038_cond_eq
    (child4034 : Flapjack.WordAlloc.removeDeadStructural input4034 value738 value1 value2 = (output4034, value738, value1))
    (child4037 : Flapjack.WordAlloc.removeDeadStructural input4037 value738 value1 value2 = (output4037, value738, value1)) : Flapjack.WordAlloc.removeDeadStructural input4038 value738 value1 value2 = (output4038, value738, value1) := by
  rw [input4038_def, output4038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4034]
  try dsimp only
  rw [child4037]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4039_cond_eq
    (child4033 : Flapjack.WordAlloc.removeDeadStructural input4033 value734 value1 value2 = (output4033, value738, value1))
    (child4038 : Flapjack.WordAlloc.removeDeadStructural input4038 value738 value1 value2 = (output4038, value738, value1)) : Flapjack.WordAlloc.removeDeadStructural input4039 value734 value1 value2 = (output4039, value738, value1) := by
  rw [input4039_def, output4039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4033]
  try dsimp only
  rw [child4038]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4040_cond_eq
    (child4028 : Flapjack.WordAlloc.removeDeadStructural input4028 value734 value1 value2 = (output4028, value734, value1))
    (child4039 : Flapjack.WordAlloc.removeDeadStructural input4039 value734 value1 value2 = (output4039, value738, value1)) : Flapjack.WordAlloc.removeDeadStructural input4040 value734 value1 value2 = (output4040, value738, value1) := by
  rw [input4040_def, output4040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4028]
  try dsimp only
  rw [child4039]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4041_cond_eq
    (child4027 : Flapjack.WordAlloc.removeDeadStructural input4027 value736 value1 value2 = (output4027, value734, value1))
    (child4040 : Flapjack.WordAlloc.removeDeadStructural input4040 value734 value1 value2 = (output4040, value738, value1)) : Flapjack.WordAlloc.removeDeadStructural input4041 value736 value1 value2 = (output4041, value738, value1) := by
  rw [input4041_def, output4041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4027]
  try dsimp only
  rw [child4040]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4042_cond_eq
    (child4026 : Flapjack.WordAlloc.removeDeadStructural input4026 value734 value1 value2 = (output4026, value736, value1))
    (child4041 : Flapjack.WordAlloc.removeDeadStructural input4041 value736 value1 value2 = (output4041, value738, value1)) : Flapjack.WordAlloc.removeDeadStructural input4042 value734 value1 value2 = (output4042, value738, value1) := by
  rw [input4042_def, output4042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4026]
  try dsimp only
  rw [child4041]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4043_cond_eq
    (child4023 : Flapjack.WordAlloc.removeDeadStructural input4023 value733 value1 value2 = (output4023, value734, value1))
    (child4042 : Flapjack.WordAlloc.removeDeadStructural input4042 value734 value1 value2 = (output4042, value738, value1)) : Flapjack.WordAlloc.removeDeadStructural input4043 value733 value1 value2 = (output4043, value738, value1) := by
  rw [input4043_def, output4043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4023]
  try dsimp only
  rw [child4042]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4044 value733 value1 value2 = (output4044, value733, value1) := by
  rw [input4044_def, output4044_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4045 value733 value1 value2 = (output4045, value733, value1) := by
  rw [input4045_def, output4045_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4046_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4046 value733 value1 value2 = (output4046, value739, value1) := by
  rw [input4046_def, output4046_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4047 value739 value1 value2 = (output4047, value739, value1) := by
  rw [input4047_def, output4047_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4048_cond_eq
    (child4046 : Flapjack.WordAlloc.removeDeadStructural input4046 value733 value1 value2 = (output4046, value739, value1))
    (child4047 : Flapjack.WordAlloc.removeDeadStructural input4047 value739 value1 value2 = (output4047, value739, value1)) : Flapjack.WordAlloc.removeDeadStructural input4048 value733 value1 value2 = (output4048, value739, value1) := by
  rw [input4048_def, output4048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4046]
  try dsimp only
  rw [child4047]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4049_cond_eq
    (child4045 : Flapjack.WordAlloc.removeDeadStructural input4045 value733 value1 value2 = (output4045, value733, value1))
    (child4048 : Flapjack.WordAlloc.removeDeadStructural input4048 value733 value1 value2 = (output4048, value739, value1)) : Flapjack.WordAlloc.removeDeadStructural input4049 value733 value1 value2 = (output4049, value739, value1) := by
  rw [input4049_def, output4049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4045]
  try dsimp only
  rw [child4048]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4050_cond_eq
    (child4044 : Flapjack.WordAlloc.removeDeadStructural input4044 value733 value1 value2 = (output4044, value733, value1))
    (child4049 : Flapjack.WordAlloc.removeDeadStructural input4049 value733 value1 value2 = (output4049, value739, value1)) : Flapjack.WordAlloc.removeDeadStructural input4050 value733 value1 value2 = (output4050, value739, value1) := by
  rw [input4050_def, output4050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4044]
  try dsimp only
  rw [child4049]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4051_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4051 value739 value1 value2 = (output4051, value740, value1) := by
  rw [input4051_def, output4051_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4052_cond_eq
    (child4050 : Flapjack.WordAlloc.removeDeadStructural input4050 value733 value1 value2 = (output4050, value739, value1))
    (child4051 : Flapjack.WordAlloc.removeDeadStructural input4051 value739 value1 value2 = (output4051, value740, value1)) : Flapjack.WordAlloc.removeDeadStructural input4052 value733 value1 value2 = (output4052, value740, value1) := by
  rw [input4052_def, output4052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4050]
  try dsimp only
  rw [child4051]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4053 value740 value1 value2 = (output4053, value740, value1) := by
  rw [input4053_def, output4053_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4054_cond_eq
    (child4052 : Flapjack.WordAlloc.removeDeadStructural input4052 value733 value1 value2 = (output4052, value740, value1))
    (child4053 : Flapjack.WordAlloc.removeDeadStructural input4053 value740 value1 value2 = (output4053, value740, value1)) : Flapjack.WordAlloc.removeDeadStructural input4054 value733 value1 value2 = (output4054, value740, value1) := by
  rw [input4054_def, output4054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4052]
  try dsimp only
  rw [child4053]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4055_cond_eq
    (child4043 : Flapjack.WordAlloc.removeDeadStructural input4043 value733 value1 value2 = (output4043, value738, value1))
    (child4054 : Flapjack.WordAlloc.removeDeadStructural input4054 value733 value1 value2 = (output4054, value740, value1)) : Flapjack.WordAlloc.removeDeadStructural input4055 value733 value1 value2 = (output4055, value742, value1) := by
  rw [input4055_def, output4055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4043]
  try dsimp only
  rw [child4054]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

theorem node4056_cond_eq
    (child4014 : Flapjack.WordAlloc.removeDeadStructural input4014 value733 value1 value2 = (output4014, value733, value1))
    (child4055 : Flapjack.WordAlloc.removeDeadStructural input4055 value733 value1 value2 = (output4055, value742, value1)) : Flapjack.WordAlloc.removeDeadStructural input4056 value733 value1 value2 = (output4056, value742, value1) := by
  rw [input4056_def, output4056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4014]
  try dsimp only
  rw [child4055]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4057_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4057 value742 value1 value2 = (output4057, value740, value1) := by
  rw [input4057_def, output4057_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4058_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4058 value740 value1 value2 = (output4058, value743, value1) := by
  rw [input4058_def, output4058_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4059_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4059 value743 value1 value2 = (output4059, value743, value1) := by
  rw [input4059_def, output4059_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4060 value743 value1 value2 = (output4060, value743, value1) := by
  rw [input4060_def, output4060_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4061 value743 value1 value2 = (output4061, value743, value1) := by
  rw [input4061_def, output4061_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4062 value743 value1 value2 = (output4062, value743, value1) := by
  rw [input4062_def, output4062_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4063_cond_eq
    (child4061 : Flapjack.WordAlloc.removeDeadStructural input4061 value743 value1 value2 = (output4061, value743, value1))
    (child4062 : Flapjack.WordAlloc.removeDeadStructural input4062 value743 value1 value2 = (output4062, value743, value1)) : Flapjack.WordAlloc.removeDeadStructural input4063 value743 value1 value2 = (output4063, value743, value1) := by
  rw [input4063_def, output4063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4061]
  try dsimp only
  rw [child4062]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4064_cond_eq
    (child4060 : Flapjack.WordAlloc.removeDeadStructural input4060 value743 value1 value2 = (output4060, value743, value1))
    (child4063 : Flapjack.WordAlloc.removeDeadStructural input4063 value743 value1 value2 = (output4063, value743, value1)) : Flapjack.WordAlloc.removeDeadStructural input4064 value743 value1 value2 = (output4064, value743, value1) := by
  rw [input4064_def, output4064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4060]
  try dsimp only
  rw [child4063]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4065 value743 value1 value2 = (output4065, value743, value1) := by
  rw [input4065_def, output4065_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4066_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4066 value743 value1 value2 = (output4066, value743, value1) := by
  rw [input4066_def, output4066_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4067_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4067 value743 value1 value2 = (output4067, value738, value1) := by
  rw [input4067_def, output4067_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4068 value738 value1 value2 = (output4068, value738, value1) := by
  rw [input4068_def, output4068_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4069_cond_eq
    (child4067 : Flapjack.WordAlloc.removeDeadStructural input4067 value743 value1 value2 = (output4067, value738, value1))
    (child4068 : Flapjack.WordAlloc.removeDeadStructural input4068 value738 value1 value2 = (output4068, value738, value1)) : Flapjack.WordAlloc.removeDeadStructural input4069 value743 value1 value2 = (output4069, value738, value1) := by
  rw [input4069_def, output4069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4067]
  try dsimp only
  rw [child4068]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4070_cond_eq
    (child4066 : Flapjack.WordAlloc.removeDeadStructural input4066 value743 value1 value2 = (output4066, value743, value1))
    (child4069 : Flapjack.WordAlloc.removeDeadStructural input4069 value743 value1 value2 = (output4069, value738, value1)) : Flapjack.WordAlloc.removeDeadStructural input4070 value743 value1 value2 = (output4070, value738, value1) := by
  rw [input4070_def, output4070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4066]
  try dsimp only
  rw [child4069]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4071_cond_eq
    (child4065 : Flapjack.WordAlloc.removeDeadStructural input4065 value743 value1 value2 = (output4065, value743, value1))
    (child4070 : Flapjack.WordAlloc.removeDeadStructural input4070 value743 value1 value2 = (output4070, value738, value1)) : Flapjack.WordAlloc.removeDeadStructural input4071 value743 value1 value2 = (output4071, value738, value1) := by
  rw [input4071_def, output4071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4065]
  try dsimp only
  rw [child4070]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4072_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4072 value738 value1 value2 = (output4072, value744, value1) := by
  rw [input4072_def, output4072_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4073_cond_eq
    (child4071 : Flapjack.WordAlloc.removeDeadStructural input4071 value743 value1 value2 = (output4071, value738, value1))
    (child4072 : Flapjack.WordAlloc.removeDeadStructural input4072 value738 value1 value2 = (output4072, value744, value1)) : Flapjack.WordAlloc.removeDeadStructural input4073 value743 value1 value2 = (output4073, value744, value1) := by
  rw [input4073_def, output4073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4071]
  try dsimp only
  rw [child4072]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4074_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4074 value744 value1 value2 = (output4074, value745, value1) := by
  rw [input4074_def, output4074_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4075_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4075 value745 value1 value2 = (output4075, value746, value1) := by
  rw [input4075_def, output4075_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4076_cond_eq
    (child4074 : Flapjack.WordAlloc.removeDeadStructural input4074 value744 value1 value2 = (output4074, value745, value1))
    (child4075 : Flapjack.WordAlloc.removeDeadStructural input4075 value745 value1 value2 = (output4075, value746, value1)) : Flapjack.WordAlloc.removeDeadStructural input4076 value744 value1 value2 = (output4076, value746, value1) := by
  rw [input4076_def, output4076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4074]
  try dsimp only
  rw [child4075]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4077 value746 value1 value2 = (output4077, value744, value1) := by
  rw [input4077_def, output4077_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4078 value744 value1 value2 = (output4078, value744, value1) := by
  rw [input4078_def, output4078_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4079 value744 value1 value2 = (output4079, value747, value1) := by
  rw [input4079_def, output4079_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4080_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4080 value747 value1 value2 = (output4080, value747, value1) := by
  rw [input4080_def, output4080_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4081_cond_eq
    (child4079 : Flapjack.WordAlloc.removeDeadStructural input4079 value744 value1 value2 = (output4079, value747, value1))
    (child4080 : Flapjack.WordAlloc.removeDeadStructural input4080 value747 value1 value2 = (output4080, value747, value1)) : Flapjack.WordAlloc.removeDeadStructural input4081 value744 value1 value2 = (output4081, value747, value1) := by
  rw [input4081_def, output4081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4079]
  try dsimp only
  rw [child4080]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4082_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4082 value747 value1 value2 = (output4082, value748, value1) := by
  rw [input4082_def, output4082_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4083_cond_eq
    (child4081 : Flapjack.WordAlloc.removeDeadStructural input4081 value744 value1 value2 = (output4081, value747, value1))
    (child4082 : Flapjack.WordAlloc.removeDeadStructural input4082 value747 value1 value2 = (output4082, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input4083 value744 value1 value2 = (output4083, value748, value1) := by
  rw [input4083_def, output4083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4081]
  try dsimp only
  rw [child4082]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4084 value748 value1 value2 = (output4084, value748, value1) := by
  rw [input4084_def, output4084_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4085 value748 value1 value2 = (output4085, value748, value1) := by
  rw [input4085_def, output4085_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4086_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4086 value748 value1 value2 = (output4086, value748, value1) := by
  rw [input4086_def, output4086_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4087_cond_eq
    (child4085 : Flapjack.WordAlloc.removeDeadStructural input4085 value748 value1 value2 = (output4085, value748, value1))
    (child4086 : Flapjack.WordAlloc.removeDeadStructural input4086 value748 value1 value2 = (output4086, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input4087 value748 value1 value2 = (output4087, value748, value1) := by
  rw [input4087_def, output4087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4085]
  try dsimp only
  rw [child4086]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4088_cond_eq
    (child4084 : Flapjack.WordAlloc.removeDeadStructural input4084 value748 value1 value2 = (output4084, value748, value1))
    (child4087 : Flapjack.WordAlloc.removeDeadStructural input4087 value748 value1 value2 = (output4087, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input4088 value748 value1 value2 = (output4088, value748, value1) := by
  rw [input4088_def, output4088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4084]
  try dsimp only
  rw [child4087]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4089_cond_eq
    (child4083 : Flapjack.WordAlloc.removeDeadStructural input4083 value744 value1 value2 = (output4083, value748, value1))
    (child4088 : Flapjack.WordAlloc.removeDeadStructural input4088 value748 value1 value2 = (output4088, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input4089 value744 value1 value2 = (output4089, value748, value1) := by
  rw [input4089_def, output4089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4083]
  try dsimp only
  rw [child4088]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4090_cond_eq
    (child4078 : Flapjack.WordAlloc.removeDeadStructural input4078 value744 value1 value2 = (output4078, value744, value1))
    (child4089 : Flapjack.WordAlloc.removeDeadStructural input4089 value744 value1 value2 = (output4089, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input4090 value744 value1 value2 = (output4090, value748, value1) := by
  rw [input4090_def, output4090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4078]
  try dsimp only
  rw [child4089]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4091_cond_eq
    (child4077 : Flapjack.WordAlloc.removeDeadStructural input4077 value746 value1 value2 = (output4077, value744, value1))
    (child4090 : Flapjack.WordAlloc.removeDeadStructural input4090 value744 value1 value2 = (output4090, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input4091 value746 value1 value2 = (output4091, value748, value1) := by
  rw [input4091_def, output4091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4077]
  try dsimp only
  rw [child4090]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4092_cond_eq
    (child4076 : Flapjack.WordAlloc.removeDeadStructural input4076 value744 value1 value2 = (output4076, value746, value1))
    (child4091 : Flapjack.WordAlloc.removeDeadStructural input4091 value746 value1 value2 = (output4091, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input4092 value744 value1 value2 = (output4092, value748, value1) := by
  rw [input4092_def, output4092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4076]
  try dsimp only
  rw [child4091]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4093_cond_eq
    (child4073 : Flapjack.WordAlloc.removeDeadStructural input4073 value743 value1 value2 = (output4073, value744, value1))
    (child4092 : Flapjack.WordAlloc.removeDeadStructural input4092 value744 value1 value2 = (output4092, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input4093 value743 value1 value2 = (output4093, value748, value1) := by
  rw [input4093_def, output4093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4073]
  try dsimp only
  rw [child4092]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node4094_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4094 value743 value1 value2 = (output4094, value743, value1) := by
  rw [input4094_def, output4094_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4095 value743 value1 value2 = (output4095, value743, value1) := by
  rw [input4095_def, output4095_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node4095_cond_eq
end InitE.DeadStages597.Parallel
