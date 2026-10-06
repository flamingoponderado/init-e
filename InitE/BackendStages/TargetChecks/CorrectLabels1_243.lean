import InitE.BackendStages.TargetChecks.CorrectLabels0_243
import InitE.BackendStages.TargetChecks.CorrectEncode0_243
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_243
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_243_eq : LabToTarget.sectionLabels 134280 Reencode0_243.lines [] = (135900, localLabels1_243) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 134280 135900 riscvConfig.encode
    Initial243.lines Reencode0_243.lines [] Reencode0_243_eq).trans
    (localLabels0_243_eq.trans (by kernel_rfl))
#print axioms localLabels1_243_eq
end InitE.BackendStages.TargetChecks.Correct
