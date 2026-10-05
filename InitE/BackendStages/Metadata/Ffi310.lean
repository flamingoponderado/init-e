import InitE.BackendStages.Metadata.Data310
import InitE.BackendStages.Filtered310
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis310_eq : ffiLines Filtered310.lines = localFfis310 := by
  with_unfolding_all rfl
theorem ffiStep310 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis310) : LabToTarget.findFfiNames (Filtered310 :: rest) = suffixFfis310 := by
  rw [findFfiNames_section, localFfis310_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep310
end InitE.BackendStages.Metadata
