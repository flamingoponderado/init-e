import InitE.BackendStages.TargetChecks.CorrectLabels0_583
import InitE.BackendStages.TargetChecks.CorrectEncode0_583
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_583
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_583_eq : LabToTarget.sectionLabels 424472 Reencode0_583.lines [] = (425020, localLabels1_583) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 424472 425020 riscvConfig.encode
    Initial583.lines Reencode0_583.lines [] Reencode0_583_eq).trans
    (localLabels0_583_eq.trans (by kernel_rfl))
#print axioms localLabels1_583_eq
end InitE.BackendStages.TargetChecks.Correct
