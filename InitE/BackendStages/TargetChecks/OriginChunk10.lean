import InitE.BackendStages.Encoded378
import InitE.BackendStages.TargetChecks.Initial378
import InitE.BackendStages.Encoded379
import InitE.BackendStages.TargetChecks.Initial379
import InitE.BackendStages.Encoded380
import InitE.BackendStages.TargetChecks.Initial380
import InitE.BackendStages.Encoded381
import InitE.BackendStages.TargetChecks.Initial381
import InitE.BackendStages.Encoded382
import InitE.BackendStages.TargetChecks.Initial382
import InitE.BackendStages.Encoded383
import InitE.BackendStages.TargetChecks.Initial383
import InitE.BackendStages.Encoded384
import InitE.BackendStages.TargetChecks.Initial384
import InitE.BackendStages.Encoded385
import InitE.BackendStages.TargetChecks.Initial385
import InitE.BackendStages.Encoded386
import InitE.BackendStages.TargetChecks.Initial386
import InitE.BackendStages.Encoded387
import InitE.BackendStages.TargetChecks.Initial387
import InitE.BackendStages.Encoded388
import InitE.BackendStages.TargetChecks.Initial388
import InitE.BackendStages.Encoded389
import InitE.BackendStages.TargetChecks.Initial389
import InitE.BackendStages.Encoded390
import InitE.BackendStages.TargetChecks.Initial390
import InitE.BackendStages.Encoded391
import InitE.BackendStages.TargetChecks.Initial391
import InitE.BackendStages.Encoded392
import InitE.BackendStages.TargetChecks.Initial392
import InitE.BackendStages.Encoded393
import InitE.BackendStages.TargetChecks.Initial393
import InitE.BackendStages.Encoded394
import InitE.BackendStages.TargetChecks.Initial394
import InitE.BackendStages.Encoded395
import InitE.BackendStages.TargetChecks.Initial395
import InitE.BackendStages.Encoded396
import InitE.BackendStages.TargetChecks.Initial396
import InitE.BackendStages.Encoded397
import InitE.BackendStages.TargetChecks.Initial397
import InitE.BackendStages.Encoded398
import InitE.BackendStages.TargetChecks.Initial398
import InitE.BackendStages.Encoded399
import InitE.BackendStages.TargetChecks.Initial399
import InitE.BackendStages.Encoded400
import InitE.BackendStages.TargetChecks.Initial400
import InitE.BackendStages.Encoded401
import InitE.BackendStages.TargetChecks.Initial401
import InitE.BackendStages.Encoded402
import InitE.BackendStages.TargetChecks.Initial402
import InitE.BackendStages.Encoded403
import InitE.BackendStages.TargetChecks.Initial403
import InitE.BackendStages.Encoded404
import InitE.BackendStages.TargetChecks.Initial404
import InitE.BackendStages.Encoded405
import InitE.BackendStages.TargetChecks.Initial405
import InitE.BackendStages.Encoded406
import InitE.BackendStages.TargetChecks.Initial406
import InitE.BackendStages.Encoded407
import InitE.BackendStages.TargetChecks.Initial407
import InitE.BackendStages.Encoded408
import InitE.BackendStages.TargetChecks.Initial408
import InitE.BackendStages.Encoded409
import InitE.BackendStages.TargetChecks.Initial409
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk10
def input : LabSem.LabProgHOL 64 := [Encoded378, Encoded379, Encoded380, Encoded381, Encoded382, Encoded383, Encoded384, Encoded385, Encoded386, Encoded387, Encoded388, Encoded389, Encoded390, Encoded391, Encoded392, Encoded393, Encoded394, Encoded395, Encoded396, Encoded397, Encoded398, Encoded399, Encoded400, Encoded401, Encoded402, Encoded403, Encoded404, Encoded405, Encoded406, Encoded407, Encoded408, Encoded409]
def output : LabSem.LabProgHOL 64 := [Initial378, Initial379, Initial380, Initial381, Initial382, Initial383, Initial384, Initial385, Initial386, Initial387, Initial388, Initial389, Initial390, Initial391, Initial392, Initial393, Initial394, Initial395, Initial396, Initial397, Initial398, Initial399, Initial400, Initial401, Initial402, Initial403, Initial404, Initial405, Initial406, Initial407, Initial408, Initial409]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk10
end InitE.BackendStages.TargetChecks
