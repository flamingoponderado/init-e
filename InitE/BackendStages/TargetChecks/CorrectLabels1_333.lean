import InitE.BackendStages.TargetChecks.CorrectLabels0_333
import InitE.BackendStages.TargetChecks.CorrectEncode0_333
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_333
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_333_eq : LabToTarget.sectionLabels 227216 Reencode0_333.lines [] = (227708, localLabels1_333) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 227216 227708 riscvConfig.encode
    Initial333.lines Reencode0_333.lines [] Reencode0_333_eq).trans
    (localLabels0_333_eq.trans (by kernel_rfl))
#print axioms localLabels1_333_eq
end InitE.BackendStages.TargetChecks.Correct
