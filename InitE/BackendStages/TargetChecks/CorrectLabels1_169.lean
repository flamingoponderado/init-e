import InitE.BackendStages.TargetChecks.CorrectLabels0_169
import InitE.BackendStages.TargetChecks.CorrectEncode0_169
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_169
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_169_eq : LabToTarget.sectionLabels 51648 Reencode0_169.lines [] = (52276, localLabels1_169) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 51648 52276 riscvConfig.encode
    Initial169.lines Reencode0_169.lines [] Reencode0_169_eq).trans
    (localLabels0_169_eq.trans (by kernel_rfl))
#print axioms localLabels1_169_eq
end InitE.BackendStages.TargetChecks.Correct
