import InitE.BackendStages.TargetChecks.CorrectLabels0_278
import InitE.BackendStages.TargetChecks.CorrectEncode0_278
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_278
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_278_eq : LabToTarget.sectionLabels 175792 Reencode0_278.lines [] = (179908, localLabels1_278) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 175792 179908 riscvConfig.encode
    Initial278.lines Reencode0_278.lines [] Reencode0_278_eq).trans
    (localLabels0_278_eq.trans (by kernel_rfl))
#print axioms localLabels1_278_eq
end InitE.BackendStages.TargetChecks.Correct
