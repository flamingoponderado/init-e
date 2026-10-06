import InitE.BackendStages.TargetChecks.CorrectLabels0_75
import InitE.BackendStages.TargetChecks.CorrectEncode0_75
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_75
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_75_eq : LabToTarget.sectionLabels 7552 Reencode0_75.lines [] = (7580, localLabels1_75) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 7552 7580 riscvConfig.encode
    Initial75.lines Reencode0_75.lines [] Reencode0_75_eq).trans
    (localLabels0_75_eq.trans (by kernel_rfl))
#print axioms localLabels1_75_eq
end InitE.BackendStages.TargetChecks.Correct
