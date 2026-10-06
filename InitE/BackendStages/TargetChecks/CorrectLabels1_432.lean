import InitE.BackendStages.TargetChecks.CorrectLabels0_432
import InitE.BackendStages.TargetChecks.CorrectEncode0_432
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_432
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_432_eq : LabToTarget.sectionLabels 294456 Reencode0_432.lines [] = (294896, localLabels1_432) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 294456 294896 riscvConfig.encode
    Initial432.lines Reencode0_432.lines [] Reencode0_432_eq).trans
    (localLabels0_432_eq.trans (by kernel_rfl))
#print axioms localLabels1_432_eq
end InitE.BackendStages.TargetChecks.Correct
