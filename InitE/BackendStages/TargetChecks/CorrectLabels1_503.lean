import InitE.BackendStages.TargetChecks.CorrectLabels0_503
import InitE.BackendStages.TargetChecks.CorrectEncode0_503
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_503
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_503_eq : LabToTarget.sectionLabels 351724 Reencode0_503.lines [] = (352596, localLabels1_503) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 351724 352596 riscvConfig.encode
    Initial503.lines Reencode0_503.lines [] Reencode0_503_eq).trans
    (localLabels0_503_eq.trans (by kernel_rfl))
#print axioms localLabels1_503_eq
end InitE.BackendStages.TargetChecks.Correct
