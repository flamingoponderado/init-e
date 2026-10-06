import InitE.BackendStages.TargetChecks.CorrectLabels0_560
import InitE.BackendStages.TargetChecks.CorrectEncode0_560
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_560
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_560_eq : LabToTarget.sectionLabels 403700 Reencode0_560.lines [] = (405156, localLabels1_560) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 403700 405156 riscvConfig.encode
    Initial560.lines Reencode0_560.lines [] Reencode0_560_eq).trans
    (localLabels0_560_eq.trans (by kernel_rfl))
#print axioms localLabels1_560_eq
end InitE.BackendStages.TargetChecks.Correct
