import InitE.BackendStages.TargetChecks.CorrectLabels0_258
import InitE.BackendStages.TargetChecks.CorrectEncode0_258
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_258
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_258_eq : LabToTarget.sectionLabels 147900 Reencode0_258.lines [] = (151584, localLabels1_258) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 147900 151584 riscvConfig.encode
    Initial258.lines Reencode0_258.lines [] Reencode0_258_eq).trans
    (localLabels0_258_eq.trans (by kernel_rfl))
#print axioms localLabels1_258_eq
end InitE.BackendStages.TargetChecks.Correct
