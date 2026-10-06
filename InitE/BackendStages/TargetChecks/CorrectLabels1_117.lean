import InitE.BackendStages.TargetChecks.CorrectLabels0_117
import InitE.BackendStages.TargetChecks.CorrectEncode0_117
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_117
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_117_eq : LabToTarget.sectionLabels 14308 Reencode0_117.lines [] = (14440, localLabels1_117) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 14308 14440 riscvConfig.encode
    Initial117.lines Reencode0_117.lines [] Reencode0_117_eq).trans
    (localLabels0_117_eq.trans (by kernel_rfl))
#print axioms localLabels1_117_eq
end InitE.BackendStages.TargetChecks.Correct
