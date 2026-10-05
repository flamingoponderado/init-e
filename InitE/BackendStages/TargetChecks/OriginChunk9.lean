import InitE.BackendStages.Encoded346
import InitE.BackendStages.TargetChecks.Initial346
import InitE.BackendStages.Encoded347
import InitE.BackendStages.TargetChecks.Initial347
import InitE.BackendStages.Encoded348
import InitE.BackendStages.TargetChecks.Initial348
import InitE.BackendStages.Encoded349
import InitE.BackendStages.TargetChecks.Initial349
import InitE.BackendStages.Encoded350
import InitE.BackendStages.TargetChecks.Initial350
import InitE.BackendStages.Encoded351
import InitE.BackendStages.TargetChecks.Initial351
import InitE.BackendStages.Encoded352
import InitE.BackendStages.TargetChecks.Initial352
import InitE.BackendStages.Encoded353
import InitE.BackendStages.TargetChecks.Initial353
import InitE.BackendStages.Encoded354
import InitE.BackendStages.TargetChecks.Initial354
import InitE.BackendStages.Encoded355
import InitE.BackendStages.TargetChecks.Initial355
import InitE.BackendStages.Encoded356
import InitE.BackendStages.TargetChecks.Initial356
import InitE.BackendStages.Encoded357
import InitE.BackendStages.TargetChecks.Initial357
import InitE.BackendStages.Encoded358
import InitE.BackendStages.TargetChecks.Initial358
import InitE.BackendStages.Encoded359
import InitE.BackendStages.TargetChecks.Initial359
import InitE.BackendStages.Encoded360
import InitE.BackendStages.TargetChecks.Initial360
import InitE.BackendStages.Encoded361
import InitE.BackendStages.TargetChecks.Initial361
import InitE.BackendStages.Encoded362
import InitE.BackendStages.TargetChecks.Initial362
import InitE.BackendStages.Encoded363
import InitE.BackendStages.TargetChecks.Initial363
import InitE.BackendStages.Encoded364
import InitE.BackendStages.TargetChecks.Initial364
import InitE.BackendStages.Encoded365
import InitE.BackendStages.TargetChecks.Initial365
import InitE.BackendStages.Encoded366
import InitE.BackendStages.TargetChecks.Initial366
import InitE.BackendStages.Encoded367
import InitE.BackendStages.TargetChecks.Initial367
import InitE.BackendStages.Encoded368
import InitE.BackendStages.TargetChecks.Initial368
import InitE.BackendStages.Encoded369
import InitE.BackendStages.TargetChecks.Initial369
import InitE.BackendStages.Encoded370
import InitE.BackendStages.TargetChecks.Initial370
import InitE.BackendStages.Encoded371
import InitE.BackendStages.TargetChecks.Initial371
import InitE.BackendStages.Encoded372
import InitE.BackendStages.TargetChecks.Initial372
import InitE.BackendStages.Encoded373
import InitE.BackendStages.TargetChecks.Initial373
import InitE.BackendStages.Encoded374
import InitE.BackendStages.TargetChecks.Initial374
import InitE.BackendStages.Encoded375
import InitE.BackendStages.TargetChecks.Initial375
import InitE.BackendStages.Encoded376
import InitE.BackendStages.TargetChecks.Initial376
import InitE.BackendStages.Encoded377
import InitE.BackendStages.TargetChecks.Initial377
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk9
def input : LabSem.LabProgHOL 64 := [Encoded346, Encoded347, Encoded348, Encoded349, Encoded350, Encoded351, Encoded352, Encoded353, Encoded354, Encoded355, Encoded356, Encoded357, Encoded358, Encoded359, Encoded360, Encoded361, Encoded362, Encoded363, Encoded364, Encoded365, Encoded366, Encoded367, Encoded368, Encoded369, Encoded370, Encoded371, Encoded372, Encoded373, Encoded374, Encoded375, Encoded376, Encoded377]
def output : LabSem.LabProgHOL 64 := [Initial346, Initial347, Initial348, Initial349, Initial350, Initial351, Initial352, Initial353, Initial354, Initial355, Initial356, Initial357, Initial358, Initial359, Initial360, Initial361, Initial362, Initial363, Initial364, Initial365, Initial366, Initial367, Initial368, Initial369, Initial370, Initial371, Initial372, Initial373, Initial374, Initial375, Initial376, Initial377]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk9
end InitE.BackendStages.TargetChecks
