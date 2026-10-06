import InitE.BackendStages.TargetChecks.CorrectLabels0_68
import InitE.BackendStages.TargetChecks.CorrectEncode0_68
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_68
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_68_eq : LabToTarget.sectionLabels 6044 Reencode0_68.lines [] = (6528, localLabels1_68) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 6044 6528 riscvConfig.encode
    Initial68.lines Reencode0_68.lines [] Reencode0_68_eq).trans
    (localLabels0_68_eq.trans (by kernel_rfl))
#print axioms localLabels1_68_eq
end InitE.BackendStages.TargetChecks.Correct
