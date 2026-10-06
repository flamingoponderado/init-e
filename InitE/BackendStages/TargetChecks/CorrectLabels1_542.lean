import InitE.BackendStages.TargetChecks.CorrectLabels0_542
import InitE.BackendStages.TargetChecks.CorrectEncode0_542
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_542
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_542_eq : LabToTarget.sectionLabels 385480 Reencode0_542.lines [] = (385552, localLabels1_542) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 385480 385552 riscvConfig.encode
    Initial542.lines Reencode0_542.lines [] Reencode0_542_eq).trans
    (localLabels0_542_eq.trans (by kernel_rfl))
#print axioms localLabels1_542_eq
end InitE.BackendStages.TargetChecks.Correct
