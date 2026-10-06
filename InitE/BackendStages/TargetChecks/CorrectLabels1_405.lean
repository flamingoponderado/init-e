import InitE.BackendStages.TargetChecks.CorrectLabels0_405
import InitE.BackendStages.TargetChecks.CorrectEncode0_405
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_405
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_405_eq : LabToTarget.sectionLabels 278720 Reencode0_405.lines [] = (279060, localLabels1_405) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 278720 279060 riscvConfig.encode
    Initial405.lines Reencode0_405.lines [] Reencode0_405_eq).trans
    (localLabels0_405_eq.trans (by kernel_rfl))
#print axioms localLabels1_405_eq
end InitE.BackendStages.TargetChecks.Correct
