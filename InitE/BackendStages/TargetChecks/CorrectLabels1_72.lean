import InitE.BackendStages.TargetChecks.CorrectLabels0_72
import InitE.BackendStages.TargetChecks.CorrectEncode0_72
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_72
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_72_eq : LabToTarget.sectionLabels 7048 Reencode0_72.lines [] = (7076, localLabels1_72) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 7048 7076 riscvConfig.encode
    Initial72.lines Reencode0_72.lines [] Reencode0_72_eq).trans
    (localLabels0_72_eq.trans (by kernel_rfl))
#print axioms localLabels1_72_eq
end InitE.BackendStages.TargetChecks.Correct
