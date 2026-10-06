import InitE.BackendStages.TargetChecks.CorrectLabels0_254
import InitE.BackendStages.TargetChecks.CorrectEncode0_254
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_254
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_254_eq : LabToTarget.sectionLabels 142632 Reencode0_254.lines [] = (143124, localLabels1_254) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 142632 143124 riscvConfig.encode
    Initial254.lines Reencode0_254.lines [] Reencode0_254_eq).trans
    (localLabels0_254_eq.trans (by kernel_rfl))
#print axioms localLabels1_254_eq
end InitE.BackendStages.TargetChecks.Correct
