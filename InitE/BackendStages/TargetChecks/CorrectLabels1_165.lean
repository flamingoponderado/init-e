import InitE.BackendStages.TargetChecks.CorrectLabels0_165
import InitE.BackendStages.TargetChecks.CorrectEncode0_165
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_165
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_165_eq : LabToTarget.sectionLabels 49896 Reencode0_165.lines [] = (50516, localLabels1_165) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 49896 50516 riscvConfig.encode
    Initial165.lines Reencode0_165.lines [] Reencode0_165_eq).trans
    (localLabels0_165_eq.trans (by kernel_rfl))
#print axioms localLabels1_165_eq
end InitE.BackendStages.TargetChecks.Correct
