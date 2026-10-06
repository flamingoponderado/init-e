import InitE.BackendStages.TargetChecks.CorrectLabels0_146
import InitE.BackendStages.TargetChecks.CorrectEncode0_146
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_146
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_146_eq : LabToTarget.sectionLabels 34488 Reencode0_146.lines [] = (35384, localLabels1_146) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 34488 35384 riscvConfig.encode
    Initial146.lines Reencode0_146.lines [] Reencode0_146_eq).trans
    (localLabels0_146_eq.trans (by kernel_rfl))
#print axioms localLabels1_146_eq
end InitE.BackendStages.TargetChecks.Correct
