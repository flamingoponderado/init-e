import InitE.BackendStages.Encoded218
import InitE.BackendStages.TargetChecks.Initial218
import InitE.BackendStages.Encoded219
import InitE.BackendStages.TargetChecks.Initial219
import InitE.BackendStages.Encoded220
import InitE.BackendStages.TargetChecks.Initial220
import InitE.BackendStages.Encoded221
import InitE.BackendStages.TargetChecks.Initial221
import InitE.BackendStages.Encoded222
import InitE.BackendStages.TargetChecks.Initial222
import InitE.BackendStages.Encoded223
import InitE.BackendStages.TargetChecks.Initial223
import InitE.BackendStages.Encoded224
import InitE.BackendStages.TargetChecks.Initial224
import InitE.BackendStages.Encoded225
import InitE.BackendStages.TargetChecks.Initial225
import InitE.BackendStages.Encoded226
import InitE.BackendStages.TargetChecks.Initial226
import InitE.BackendStages.Encoded227
import InitE.BackendStages.TargetChecks.Initial227
import InitE.BackendStages.Encoded228
import InitE.BackendStages.TargetChecks.Initial228
import InitE.BackendStages.Encoded229
import InitE.BackendStages.TargetChecks.Initial229
import InitE.BackendStages.Encoded230
import InitE.BackendStages.TargetChecks.Initial230
import InitE.BackendStages.Encoded231
import InitE.BackendStages.TargetChecks.Initial231
import InitE.BackendStages.Encoded232
import InitE.BackendStages.TargetChecks.Initial232
import InitE.BackendStages.Encoded233
import InitE.BackendStages.TargetChecks.Initial233
import InitE.BackendStages.Encoded234
import InitE.BackendStages.TargetChecks.Initial234
import InitE.BackendStages.Encoded235
import InitE.BackendStages.TargetChecks.Initial235
import InitE.BackendStages.Encoded236
import InitE.BackendStages.TargetChecks.Initial236
import InitE.BackendStages.Encoded237
import InitE.BackendStages.TargetChecks.Initial237
import InitE.BackendStages.Encoded238
import InitE.BackendStages.TargetChecks.Initial238
import InitE.BackendStages.Encoded239
import InitE.BackendStages.TargetChecks.Initial239
import InitE.BackendStages.Encoded240
import InitE.BackendStages.TargetChecks.Initial240
import InitE.BackendStages.Encoded241
import InitE.BackendStages.TargetChecks.Initial241
import InitE.BackendStages.Encoded242
import InitE.BackendStages.TargetChecks.Initial242
import InitE.BackendStages.Encoded243
import InitE.BackendStages.TargetChecks.Initial243
import InitE.BackendStages.Encoded244
import InitE.BackendStages.TargetChecks.Initial244
import InitE.BackendStages.Encoded245
import InitE.BackendStages.TargetChecks.Initial245
import InitE.BackendStages.Encoded246
import InitE.BackendStages.TargetChecks.Initial246
import InitE.BackendStages.Encoded247
import InitE.BackendStages.TargetChecks.Initial247
import InitE.BackendStages.Encoded248
import InitE.BackendStages.TargetChecks.Initial248
import InitE.BackendStages.Encoded249
import InitE.BackendStages.TargetChecks.Initial249
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk5
def input : LabSem.LabProgHOL 64 := [Encoded218, Encoded219, Encoded220, Encoded221, Encoded222, Encoded223, Encoded224, Encoded225, Encoded226, Encoded227, Encoded228, Encoded229, Encoded230, Encoded231, Encoded232, Encoded233, Encoded234, Encoded235, Encoded236, Encoded237, Encoded238, Encoded239, Encoded240, Encoded241, Encoded242, Encoded243, Encoded244, Encoded245, Encoded246, Encoded247, Encoded248, Encoded249]
def output : LabSem.LabProgHOL 64 := [Initial218, Initial219, Initial220, Initial221, Initial222, Initial223, Initial224, Initial225, Initial226, Initial227, Initial228, Initial229, Initial230, Initial231, Initial232, Initial233, Initial234, Initial235, Initial236, Initial237, Initial238, Initial239, Initial240, Initial241, Initial242, Initial243, Initial244, Initial245, Initial246, Initial247, Initial248, Initial249]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk5
end InitE.BackendStages.TargetChecks
