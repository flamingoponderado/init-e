import InitE.BackendStages.TargetChecks.CorrectLabels0_138
import InitE.BackendStages.TargetChecks.CorrectEncode0_138
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_138
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_138_eq : LabToTarget.sectionLabels 30088 Reencode0_138.lines [] = (30620, localLabels1_138) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 30088 30620 riscvConfig.encode
    Initial138.lines Reencode0_138.lines [] Reencode0_138_eq).trans
    (localLabels0_138_eq.trans (by kernel_rfl))
#print axioms localLabels1_138_eq
end InitE.BackendStages.TargetChecks.Correct
