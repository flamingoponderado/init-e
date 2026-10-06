import InitE.BackendStages.TargetChecks.CorrectLabels0_414
import InitE.BackendStages.TargetChecks.CorrectEncode0_414
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_414
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_414_eq : LabToTarget.sectionLabels 284060 Reencode0_414.lines [] = (284424, localLabels1_414) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 284060 284424 riscvConfig.encode
    Initial414.lines Reencode0_414.lines [] Reencode0_414_eq).trans
    (localLabels0_414_eq.trans (by kernel_rfl))
#print axioms localLabels1_414_eq
end InitE.BackendStages.TargetChecks.Correct
