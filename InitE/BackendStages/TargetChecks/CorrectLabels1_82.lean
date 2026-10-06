import InitE.BackendStages.TargetChecks.CorrectLabels0_82
import InitE.BackendStages.TargetChecks.CorrectEncode0_82
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_82
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_82_eq : LabToTarget.sectionLabels 9768 Reencode0_82.lines [] = (9896, localLabels1_82) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 9768 9896 riscvConfig.encode
    Initial82.lines Reencode0_82.lines [] Reencode0_82_eq).trans
    (localLabels0_82_eq.trans (by kernel_rfl))
#print axioms localLabels1_82_eq
end InitE.BackendStages.TargetChecks.Correct
