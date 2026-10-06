import InitE.BackendStages.TargetChecks.CorrectLabels0_529
import InitE.BackendStages.TargetChecks.CorrectEncode0_529
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_529
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_529_eq : LabToTarget.sectionLabels 375476 Reencode0_529.lines [] = (375904, localLabels1_529) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 375476 375904 riscvConfig.encode
    Initial529.lines Reencode0_529.lines [] Reencode0_529_eq).trans
    (localLabels0_529_eq.trans (by kernel_rfl))
#print axioms localLabels1_529_eq
end InitE.BackendStages.TargetChecks.Correct
