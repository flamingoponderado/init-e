import InitE.BackendStages.TargetChecks.CorrectLabels0_453
import InitE.BackendStages.TargetChecks.CorrectEncode0_453
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_453
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_453_eq : LabToTarget.sectionLabels 309276 Reencode0_453.lines [] = (309736, localLabels1_453) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 309276 309736 riscvConfig.encode
    Initial453.lines Reencode0_453.lines [] Reencode0_453_eq).trans
    (localLabels0_453_eq.trans (by kernel_rfl))
#print axioms localLabels1_453_eq
end InitE.BackendStages.TargetChecks.Correct
