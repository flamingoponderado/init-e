import InitE.BackendStages.TargetChecks.CorrectLabels0_203
import InitE.BackendStages.TargetChecks.CorrectEncode0_203
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_203
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_203_eq : LabToTarget.sectionLabels 71596 Reencode0_203.lines [] = (71756, localLabels1_203) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 71596 71756 riscvConfig.encode
    Initial203.lines Reencode0_203.lines [] Reencode0_203_eq).trans
    (localLabels0_203_eq.trans (by kernel_rfl))
#print axioms localLabels1_203_eq
end InitE.BackendStages.TargetChecks.Correct
