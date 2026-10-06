import InitE.BackendStages.TargetChecks.CorrectLabels0_135
import InitE.BackendStages.TargetChecks.CorrectEncode0_135
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_135
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_135_eq : LabToTarget.sectionLabels 28112 Reencode0_135.lines [] = (28688, localLabels1_135) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 28112 28688 riscvConfig.encode
    Initial135.lines Reencode0_135.lines [] Reencode0_135_eq).trans
    (localLabels0_135_eq.trans (by kernel_rfl))
#print axioms localLabels1_135_eq
end InitE.BackendStages.TargetChecks.Correct
