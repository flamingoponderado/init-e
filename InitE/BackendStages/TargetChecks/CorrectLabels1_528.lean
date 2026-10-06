import InitE.BackendStages.TargetChecks.CorrectLabels0_528
import InitE.BackendStages.TargetChecks.CorrectEncode0_528
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_528
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_528_eq : LabToTarget.sectionLabels 374436 Reencode0_528.lines [] = (375476, localLabels1_528) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 374436 375476 riscvConfig.encode
    Initial528.lines Reencode0_528.lines [] Reencode0_528_eq).trans
    (localLabels0_528_eq.trans (by kernel_rfl))
#print axioms localLabels1_528_eq
end InitE.BackendStages.TargetChecks.Correct
