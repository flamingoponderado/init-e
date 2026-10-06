import InitE.BackendStages.TargetChecks.CorrectLabels0_168
import InitE.BackendStages.TargetChecks.CorrectEncode0_168
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_168
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_168_eq : LabToTarget.sectionLabels 51176 Reencode0_168.lines [] = (51648, localLabels1_168) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 51176 51648 riscvConfig.encode
    Initial168.lines Reencode0_168.lines [] Reencode0_168_eq).trans
    (localLabels0_168_eq.trans (by kernel_rfl))
#print axioms localLabels1_168_eq
end InitE.BackendStages.TargetChecks.Correct
