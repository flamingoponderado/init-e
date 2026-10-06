import InitE.BackendStages.TargetChecks.CorrectLabels0_216
import InitE.BackendStages.TargetChecks.CorrectEncode0_216
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_216
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_216_eq : LabToTarget.sectionLabels 81180 Reencode0_216.lines [] = (81844, localLabels1_216) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 81180 81844 riscvConfig.encode
    Initial216.lines Reencode0_216.lines [] Reencode0_216_eq).trans
    (localLabels0_216_eq.trans (by kernel_rfl))
#print axioms localLabels1_216_eq
end InitE.BackendStages.TargetChecks.Correct
