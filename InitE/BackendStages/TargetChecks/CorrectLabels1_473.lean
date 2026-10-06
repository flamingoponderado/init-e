import InitE.BackendStages.TargetChecks.CorrectLabels0_473
import InitE.BackendStages.TargetChecks.CorrectEncode0_473
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_473
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_473_eq : LabToTarget.sectionLabels 337568 Reencode0_473.lines [] = (337932, localLabels1_473) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 337568 337932 riscvConfig.encode
    Initial473.lines Reencode0_473.lines [] Reencode0_473_eq).trans
    (localLabels0_473_eq.trans (by kernel_rfl))
#print axioms localLabels1_473_eq
end InitE.BackendStages.TargetChecks.Correct
