import InitE.BackendStages.TargetChecks.CorrectLabels0_554
import InitE.BackendStages.TargetChecks.CorrectEncode0_554
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_554
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_554_eq : LabToTarget.sectionLabels 399448 Reencode0_554.lines [] = (400512, localLabels1_554) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 399448 400512 riscvConfig.encode
    Initial554.lines Reencode0_554.lines [] Reencode0_554_eq).trans
    (localLabels0_554_eq.trans (by kernel_rfl))
#print axioms localLabels1_554_eq
end InitE.BackendStages.TargetChecks.Correct
