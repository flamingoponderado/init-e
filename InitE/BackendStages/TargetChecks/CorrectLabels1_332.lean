import InitE.BackendStages.TargetChecks.CorrectLabels0_332
import InitE.BackendStages.TargetChecks.CorrectEncode0_332
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_332
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_332_eq : LabToTarget.sectionLabels 226696 Reencode0_332.lines [] = (227216, localLabels1_332) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 226696 227216 riscvConfig.encode
    Initial332.lines Reencode0_332.lines [] Reencode0_332_eq).trans
    (localLabels0_332_eq.trans (by kernel_rfl))
#print axioms localLabels1_332_eq
end InitE.BackendStages.TargetChecks.Correct
