import InitE.BackendStages.TargetChecks.CorrectLabels0_104
import InitE.BackendStages.TargetChecks.CorrectEncode0_104
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_104
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_104_eq : LabToTarget.sectionLabels 12828 Reencode0_104.lines [] = (13060, localLabels1_104) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 12828 13060 riscvConfig.encode
    Initial104.lines Reencode0_104.lines [] Reencode0_104_eq).trans
    (localLabels0_104_eq.trans (by kernel_rfl))
#print axioms localLabels1_104_eq
end InitE.BackendStages.TargetChecks.Correct
