import InitE.BackendStages.TargetChecks.CorrectLabels0_227
import InitE.BackendStages.TargetChecks.CorrectEncode0_227
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_227
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_227_eq : LabToTarget.sectionLabels 85896 Reencode0_227.lines [] = (85928, localLabels1_227) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 85896 85928 riscvConfig.encode
    Initial227.lines Reencode0_227.lines [] Reencode0_227_eq).trans
    (localLabels0_227_eq.trans (by kernel_rfl))
#print axioms localLabels1_227_eq
end InitE.BackendStages.TargetChecks.Correct
