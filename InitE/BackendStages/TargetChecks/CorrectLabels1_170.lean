import InitE.BackendStages.TargetChecks.CorrectLabels0_170
import InitE.BackendStages.TargetChecks.CorrectEncode0_170
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_170
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_170_eq : LabToTarget.sectionLabels 52276 Reencode0_170.lines [] = (52784, localLabels1_170) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 52276 52784 riscvConfig.encode
    Initial170.lines Reencode0_170.lines [] Reencode0_170_eq).trans
    (localLabels0_170_eq.trans (by kernel_rfl))
#print axioms localLabels1_170_eq
end InitE.BackendStages.TargetChecks.Correct
