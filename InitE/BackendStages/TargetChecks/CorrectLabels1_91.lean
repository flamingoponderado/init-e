import InitE.BackendStages.TargetChecks.CorrectLabels0_91
import InitE.BackendStages.TargetChecks.CorrectEncode0_91
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_91
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_91_eq : LabToTarget.sectionLabels 11472 Reencode0_91.lines [] = (11564, localLabels1_91) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 11472 11564 riscvConfig.encode
    Initial91.lines Reencode0_91.lines [] Reencode0_91_eq).trans
    (localLabels0_91_eq.trans (by kernel_rfl))
#print axioms localLabels1_91_eq
end InitE.BackendStages.TargetChecks.Correct
