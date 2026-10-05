import Tools.GenSmallStages
import InitE.SmallStages.Oracles871
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 871 InitE.WordStages.source871.2.1 InitE.WordStages.source871.2.2 InitE.SmallStages.Oracles871.oracle871
