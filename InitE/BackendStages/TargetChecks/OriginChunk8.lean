import InitE.BackendStages.Encoded314
import InitE.BackendStages.TargetChecks.Initial314
import InitE.BackendStages.Encoded315
import InitE.BackendStages.TargetChecks.Initial315
import InitE.BackendStages.Encoded316
import InitE.BackendStages.TargetChecks.Initial316
import InitE.BackendStages.Encoded317
import InitE.BackendStages.TargetChecks.Initial317
import InitE.BackendStages.Encoded318
import InitE.BackendStages.TargetChecks.Initial318
import InitE.BackendStages.Encoded319
import InitE.BackendStages.TargetChecks.Initial319
import InitE.BackendStages.Encoded320
import InitE.BackendStages.TargetChecks.Initial320
import InitE.BackendStages.Encoded321
import InitE.BackendStages.TargetChecks.Initial321
import InitE.BackendStages.Encoded322
import InitE.BackendStages.TargetChecks.Initial322
import InitE.BackendStages.Encoded323
import InitE.BackendStages.TargetChecks.Initial323
import InitE.BackendStages.Encoded324
import InitE.BackendStages.TargetChecks.Initial324
import InitE.BackendStages.Encoded325
import InitE.BackendStages.TargetChecks.Initial325
import InitE.BackendStages.Encoded326
import InitE.BackendStages.TargetChecks.Initial326
import InitE.BackendStages.Encoded327
import InitE.BackendStages.TargetChecks.Initial327
import InitE.BackendStages.Encoded328
import InitE.BackendStages.TargetChecks.Initial328
import InitE.BackendStages.Encoded329
import InitE.BackendStages.TargetChecks.Initial329
import InitE.BackendStages.Encoded330
import InitE.BackendStages.TargetChecks.Initial330
import InitE.BackendStages.Encoded331
import InitE.BackendStages.TargetChecks.Initial331
import InitE.BackendStages.Encoded332
import InitE.BackendStages.TargetChecks.Initial332
import InitE.BackendStages.Encoded333
import InitE.BackendStages.TargetChecks.Initial333
import InitE.BackendStages.Encoded334
import InitE.BackendStages.TargetChecks.Initial334
import InitE.BackendStages.Encoded335
import InitE.BackendStages.TargetChecks.Initial335
import InitE.BackendStages.Encoded336
import InitE.BackendStages.TargetChecks.Initial336
import InitE.BackendStages.Encoded337
import InitE.BackendStages.TargetChecks.Initial337
import InitE.BackendStages.Encoded338
import InitE.BackendStages.TargetChecks.Initial338
import InitE.BackendStages.Encoded339
import InitE.BackendStages.TargetChecks.Initial339
import InitE.BackendStages.Encoded340
import InitE.BackendStages.TargetChecks.Initial340
import InitE.BackendStages.Encoded341
import InitE.BackendStages.TargetChecks.Initial341
import InitE.BackendStages.Encoded342
import InitE.BackendStages.TargetChecks.Initial342
import InitE.BackendStages.Encoded343
import InitE.BackendStages.TargetChecks.Initial343
import InitE.BackendStages.Encoded344
import InitE.BackendStages.TargetChecks.Initial344
import InitE.BackendStages.Encoded345
import InitE.BackendStages.TargetChecks.Initial345
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
namespace OriginChunk8
def input : LabSem.LabProgHOL 64 := [Encoded314, Encoded315, Encoded316, Encoded317, Encoded318, Encoded319, Encoded320, Encoded321, Encoded322, Encoded323, Encoded324, Encoded325, Encoded326, Encoded327, Encoded328, Encoded329, Encoded330, Encoded331, Encoded332, Encoded333, Encoded334, Encoded335, Encoded336, Encoded337, Encoded338, Encoded339, Encoded340, Encoded341, Encoded342, Encoded343, Encoded344, Encoded345]
def output : LabSem.LabProgHOL 64 := [Initial314, Initial315, Initial316, Initial317, Initial318, Initial319, Initial320, Initial321, Initial322, Initial323, Initial324, Initial325, Initial326, Initial327, Initial328, Initial329, Initial330, Initial331, Initial332, Initial333, Initial334, Initial335, Initial336, Initial337, Initial338, Initial339, Initial340, Initial341, Initial342, Initial343, Initial344, Initial345]
theorem origin_eq : input = output := by
  with_unfolding_all rfl
#print axioms origin_eq
end OriginChunk8
end InitE.BackendStages.TargetChecks
