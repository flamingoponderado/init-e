import InitE.BackendStages.TargetChecks.CorrectLabels0_341
import InitE.BackendStages.TargetChecks.CorrectEncode0_341
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_341
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_341_eq : LabToTarget.sectionLabels 234776 Reencode0_341.lines [] = (235028, localLabels1_341) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 234776 235028 riscvConfig.encode
    Initial341.lines Reencode0_341.lines [] Reencode0_341_eq).trans
    (localLabels0_341_eq.trans (by kernel_rfl))
#print axioms localLabels1_341_eq
end InitE.BackendStages.TargetChecks.Correct
