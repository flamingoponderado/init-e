import InitE.BackendStages.TargetChecks.CorrectLabels0_246
import InitE.BackendStages.TargetChecks.CorrectEncode0_246
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_246
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_246_eq : LabToTarget.sectionLabels 136828 Reencode0_246.lines [] = (137800, localLabels1_246) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 136828 137800 riscvConfig.encode
    Initial246.lines Reencode0_246.lines [] Reencode0_246_eq).trans
    (localLabels0_246_eq.trans (by kernel_rfl))
#print axioms localLabels1_246_eq
end InitE.BackendStages.TargetChecks.Correct
