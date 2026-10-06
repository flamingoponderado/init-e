import InitE.BackendStages.TargetChecks.CorrectLabels0_102
import InitE.BackendStages.TargetChecks.CorrectEncode0_102
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_102
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_102_eq : LabToTarget.sectionLabels 12688 Reencode0_102.lines [] = (12736, localLabels1_102) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 12688 12736 riscvConfig.encode
    Initial102.lines Reencode0_102.lines [] Reencode0_102_eq).trans
    (localLabels0_102_eq.trans (by kernel_rfl))
#print axioms localLabels1_102_eq
end InitE.BackendStages.TargetChecks.Correct
