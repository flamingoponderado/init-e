import InitE.BackendStages.Encoded410
import InitE.BackendStages.TargetChecks.Initial410
import InitE.BackendStages.Encoded411
import InitE.BackendStages.TargetChecks.Initial411
import InitE.BackendStages.Encoded412
import InitE.BackendStages.TargetChecks.Initial412
import InitE.BackendStages.Encoded413
import InitE.BackendStages.TargetChecks.Initial413
import InitE.BackendStages.Encoded414
import InitE.BackendStages.TargetChecks.Initial414
import InitE.BackendStages.Encoded415
import InitE.BackendStages.TargetChecks.Initial415
import InitE.BackendStages.Encoded416
import InitE.BackendStages.TargetChecks.Initial416
import InitE.BackendStages.Encoded417
import InitE.BackendStages.TargetChecks.Initial417
import InitE.BackendStages.Encoded418
import InitE.BackendStages.TargetChecks.Initial418
import InitE.BackendStages.Encoded419
import InitE.BackendStages.TargetChecks.Initial419
import InitE.BackendStages.Encoded420
import InitE.BackendStages.TargetChecks.Initial420
import InitE.BackendStages.Encoded421
import InitE.BackendStages.TargetChecks.Initial421
import InitE.BackendStages.Encoded422
import InitE.BackendStages.TargetChecks.Initial422
import InitE.BackendStages.Encoded423
import InitE.BackendStages.TargetChecks.Initial423
import InitE.BackendStages.Encoded424
import InitE.BackendStages.TargetChecks.Initial424
import InitE.BackendStages.Encoded425
import InitE.BackendStages.TargetChecks.Initial425
import InitE.BackendStages.Encoded426
import InitE.BackendStages.TargetChecks.Initial426
import InitE.BackendStages.Encoded427
import InitE.BackendStages.TargetChecks.Initial427
import InitE.BackendStages.Encoded428
import InitE.BackendStages.TargetChecks.Initial428
import InitE.BackendStages.Encoded429
import InitE.BackendStages.TargetChecks.Initial429
import InitE.BackendStages.Encoded430
import InitE.BackendStages.TargetChecks.Initial430
import InitE.BackendStages.Encoded431
import InitE.BackendStages.TargetChecks.Initial431
import InitE.BackendStages.Encoded432
import InitE.BackendStages.TargetChecks.Initial432
import InitE.BackendStages.Encoded433
import InitE.BackendStages.TargetChecks.Initial433
import InitE.BackendStages.Encoded434
import InitE.BackendStages.TargetChecks.Initial434
import InitE.BackendStages.Encoded435
import InitE.BackendStages.TargetChecks.Initial435
import InitE.BackendStages.Encoded436
import InitE.BackendStages.TargetChecks.Initial436
import InitE.BackendStages.Encoded437
import InitE.BackendStages.TargetChecks.Initial437
import InitE.BackendStages.Encoded438
import InitE.BackendStages.TargetChecks.Initial438
import InitE.BackendStages.Encoded439
import InitE.BackendStages.TargetChecks.Initial439
import InitE.BackendStages.Encoded440
import InitE.BackendStages.TargetChecks.Initial440
import InitE.BackendStages.Encoded441
import InitE.BackendStages.TargetChecks.Initial441
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk11
def input : LabSem.LabProgHOL 64 := [Encoded410, Encoded411, Encoded412, Encoded413, Encoded414, Encoded415, Encoded416, Encoded417, Encoded418, Encoded419, Encoded420, Encoded421, Encoded422, Encoded423, Encoded424, Encoded425, Encoded426, Encoded427, Encoded428, Encoded429, Encoded430, Encoded431, Encoded432, Encoded433, Encoded434, Encoded435, Encoded436, Encoded437, Encoded438, Encoded439, Encoded440, Encoded441]
def output : LabSem.LabProgHOL 64 := [Initial410, Initial411, Initial412, Initial413, Initial414, Initial415, Initial416, Initial417, Initial418, Initial419, Initial420, Initial421, Initial422, Initial423, Initial424, Initial425, Initial426, Initial427, Initial428, Initial429, Initial430, Initial431, Initial432, Initial433, Initial434, Initial435, Initial436, Initial437, Initial438, Initial439, Initial440, Initial441]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk11
end InitE.BackendStages.TargetChecks
