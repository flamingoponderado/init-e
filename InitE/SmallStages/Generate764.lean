import Tools.GenSmallStages
import InitE.SmallStages.Oracles764
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 764 InitE.WordStages.source764.2.1 InitE.WordStages.source764.2.2 InitE.SmallStages.Oracles764.oracle764
