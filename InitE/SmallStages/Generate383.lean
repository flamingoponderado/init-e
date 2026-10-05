import Tools.GenSmallStages
import InitE.SmallStages.Oracles383
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 383 InitE.WordStages.source383.2.1 InitE.WordStages.source383.2.2 InitE.SmallStages.Oracles383.oracle383
