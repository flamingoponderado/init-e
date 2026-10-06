import InitE.BackendStages.TargetChecks.CorrectLabels0_355
import InitE.BackendStages.TargetChecks.CorrectEncode0_355
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_355
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_355_eq : LabToTarget.sectionLabels 245768 Reencode0_355.lines [] = (245800, localLabels1_355) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 245768 245800 riscvConfig.encode
    Initial355.lines Reencode0_355.lines [] Reencode0_355_eq).trans
    (localLabels0_355_eq.trans (by kernel_rfl))
#print axioms localLabels1_355_eq
end InitE.BackendStages.TargetChecks.Correct
