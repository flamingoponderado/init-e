import InitE.BackendStages.Encoded858
import InitE.BackendStages.TargetChecks.Initial858
import InitE.BackendStages.Encoded859
import InitE.BackendStages.TargetChecks.Initial859
import InitE.BackendStages.Encoded860
import InitE.BackendStages.TargetChecks.Initial860
import InitE.BackendStages.Encoded861
import InitE.BackendStages.TargetChecks.Initial861
import InitE.BackendStages.Encoded862
import InitE.BackendStages.TargetChecks.Initial862
import InitE.BackendStages.Encoded863
import InitE.BackendStages.TargetChecks.Initial863
import InitE.BackendStages.Encoded864
import InitE.BackendStages.TargetChecks.Initial864
import InitE.BackendStages.Encoded865
import InitE.BackendStages.TargetChecks.Initial865
import InitE.BackendStages.Encoded866
import InitE.BackendStages.TargetChecks.Initial866
import InitE.BackendStages.Encoded867
import InitE.BackendStages.TargetChecks.Initial867
import InitE.BackendStages.Encoded868
import InitE.BackendStages.TargetChecks.Initial868
import InitE.BackendStages.Encoded869
import InitE.BackendStages.TargetChecks.Initial869
import InitE.BackendStages.Encoded870
import InitE.BackendStages.TargetChecks.Initial870
import InitE.BackendStages.Encoded871
import InitE.BackendStages.TargetChecks.Initial871
import InitE.BackendStages.Encoded872
import InitE.BackendStages.TargetChecks.Initial872
import InitE.BackendStages.Encoded873
import InitE.BackendStages.TargetChecks.Initial873
import InitE.BackendStages.Encoded874
import InitE.BackendStages.TargetChecks.Initial874
import InitE.BackendStages.Encoded875
import InitE.BackendStages.TargetChecks.Initial875
import InitE.BackendStages.Encoded876
import InitE.BackendStages.TargetChecks.Initial876
import InitE.BackendStages.Encoded877
import InitE.BackendStages.TargetChecks.Initial877
import InitE.BackendStages.Encoded878
import InitE.BackendStages.TargetChecks.Initial878
import InitE.BackendStages.Encoded879
import InitE.BackendStages.TargetChecks.Initial879
import InitE.BackendStages.Encoded880
import InitE.BackendStages.TargetChecks.Initial880
import InitE.BackendStages.Encoded881
import InitE.BackendStages.TargetChecks.Initial881
import InitE.BackendStages.Encoded882
import InitE.BackendStages.TargetChecks.Initial882
import InitE.BackendStages.Encoded883
import InitE.BackendStages.TargetChecks.Initial883
import InitE.BackendStages.Encoded884
import InitE.BackendStages.TargetChecks.Initial884
import InitE.BackendStages.Encoded885
import InitE.BackendStages.TargetChecks.Initial885
import InitE.BackendStages.Encoded886
import InitE.BackendStages.TargetChecks.Initial886
import InitE.BackendStages.Encoded887
import InitE.BackendStages.TargetChecks.Initial887
import InitE.BackendStages.Encoded888
import InitE.BackendStages.TargetChecks.Initial888
import InitE.BackendStages.Encoded889
import InitE.BackendStages.TargetChecks.Initial889
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk25
def input : LabSem.LabProgHOL 64 := [Encoded858, Encoded859, Encoded860, Encoded861, Encoded862, Encoded863, Encoded864, Encoded865, Encoded866, Encoded867, Encoded868, Encoded869, Encoded870, Encoded871, Encoded872, Encoded873, Encoded874, Encoded875, Encoded876, Encoded877, Encoded878, Encoded879, Encoded880, Encoded881, Encoded882, Encoded883, Encoded884, Encoded885, Encoded886, Encoded887, Encoded888, Encoded889]
def output : LabSem.LabProgHOL 64 := [Initial858, Initial859, Initial860, Initial861, Initial862, Initial863, Initial864, Initial865, Initial866, Initial867, Initial868, Initial869, Initial870, Initial871, Initial872, Initial873, Initial874, Initial875, Initial876, Initial877, Initial878, Initial879, Initial880, Initial881, Initial882, Initial883, Initial884, Initial885, Initial886, Initial887, Initial888, Initial889]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk25
end InitE.BackendStages.TargetChecks
